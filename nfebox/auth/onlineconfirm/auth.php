<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Authentication Plugin: Online Confirm Authentication
 * Modified from email-based registration by CBusch
 * @author Martin Dougiamas
 * @license http://www.gnu.org/copyleft/gpl.html GNU Public License
 * @package auth_onlineconfirm
 */

defined('MOODLE_INTERNAL') || die();
require_once($CFG->libdir.'/authlib.php');

/**
 * Online Confirm authentication plugin.
 */
class auth_plugin_onlineconfirm extends auth_plugin_base {

    /**
     * Constructor.
     */
    public function __construct() {
        $this->authtype = 'onlineconfirm';
        $this->config = get_config('auth_onlineconfirm');
    }

    /**
     * Old syntax of class constructor. Deprecated in PHP7.
     *
     * @deprecated since Moodle 3.1
     */
    public function auth_plugin_onlineconfirm() {
        debugging('Use of class name as constructor is deprecated', DEBUG_DEVELOPER);
        self::__construct();
    }

    /**
     * Returns true if the username and password work and false if they are
     * wrong or don't exist.
     *
     * @param string $username The username
     * @param string $password The password
     * @return bool Authentication success or failure.
     */
    function user_login ($username, $password) {
        global $CFG, $DB;
	$password = strtolower($password);
	if ( preg_match('/\s/',$username) ) {
		$username = str_replace(' ', '', $username);
    	}
	if ( preg_match('/\s/',$password) ) {
		$password = str_replace(' ', '', $password);
    	}
	$type_father_name = $DB->get_field_sql("SELECT f.id 
              FROM {user_info_field} AS f
              WHERE f.shortname = 'father_hide'");

    	$id_here = $DB->get_field_sql("SELECT d.userid
              FROM {user_info_data} AS d JOIN {user} AS u ON u.id = d.userid
	      WHERE d.fieldid = '$type_father_name'
              AND u.username = '$username' AND lower(REPLACE(d.data, ' ', '')) = '$password'");

        if ($user = get_complete_user_data('username', $username, $id_here, $CFG->mnet_localhost_id)) {
            return validate_internal_user_password($user, $password);
        }
        return false;
    }

    /**
     * Updates the user's password.
     *
     * called when the user password is updated.
     *
     * @param  object  $user        User table object  (with system magic quotes)
     * @param  string  $newpassword Plaintext password (with system magic quotes)
     * @return boolean result
     *
     */
    function user_update_password($user, $newpassword) {
        $user = get_complete_user_data('id', $user->id);
        // This will also update the stored hash to the latest algorithm
        // if the existing hash is using an out-of-date algorithm (or the
        // legacy md5 algorithm).
        return update_internal_user_password($user, $newpassword);
    }

    function can_signup() {
        return true;
    }

/**
     * Override signup form charbusch
     * To use a custom signup form, first copy the signup_form.php file 
     * from the login folder to this folder and make changes to it
     * Then uncomment the signup_form() function below
*/
/*
    function signup_form() {
        global $CFG;

        require_once($CFG->dirroot.'/auth/'.$this->authtype.'/signup_form.php');
        return new login_signup_form(null, null, 'post', '', array('autocomplete'=>'on'));
    }
*/

    /**
     * Sign up a new user ready for confirmation.
     * Password is passed in plaintext.
     *
     * @param object $user new user object
     * @param boolean $notify print notice with link and terminate
     */
    function user_signup($user, $notify=true) {
	if ( preg_match('/\s/',$user->username) ) {
		$user->username = str_replace(' ', '', $user->username);
    	}
        // Standard signup, without custom confirmation url.
        return $this->user_signup_with_confirmation($user, $notify);
    }

    /**
     * Sign up a new user ready for confirmation.
     *
     * Password is passed in plaintext.
     * A custom confirmationurl could be used.
     *
     * @param object $user new user object
     * @param boolean $notify print notice with link and terminate
     * @param string $confirmationurl user confirmation URL
     * @return boolean true if everything well ok and $notify is set to true
     * @throws moodle_exception
     * @since Moodle 3.2
     */
    public function user_signup_with_confirmation($user, $notify=true, $confirmationurl = null) {
        global $CFG, $DB, $SESSION;
        require_once($CFG->dirroot.'/user/profile/lib.php');
        require_once($CFG->dirroot.'/user/lib.php');

        $plainpassword = $user->password;
        $user->password = hash_internal_user_password($user->password);
        if (empty($user->calendartype)) {
            $user->calendartype = $CFG->calendartype;
        }

        $user->id = user_create_user($user, false, false);

        user_add_password_history($user->id, $plainpassword);

        // Save any custom profile field information.
        profile_save_data($user);

        // Trigger event.
        \core\event\user_created::create_from_userid($user->id)->trigger();

        if ($notify) {
            global $CFG, $PAGE, $OUTPUT;
            $emailconfirm = get_string('emailconfirm');
            $PAGE->navbar->add($emailconfirm);
            $PAGE->set_title($emailconfirm);
            $PAGE->set_heading($PAGE->course->fullname);
            echo $OUTPUT->header();
            notice('ကျေးဇူးပြု၍ "ရှေ့ဆက်ရန်" ကိုနှိပ်ပါ', $CFG->wwwroot .'/login/confirm.php?data='. $user->secret .'/'. urlencode($user->username));

        } else {
            return true;
        }
    }

    /**
     * Returns true if plugin allows confirming of new users.
     *
     * @return bool
     */
    function can_confirm() {
        return true;
    }

    /**
     * Confirm the new user as registered.
     *
     * @param string $username
     * @param string $confirmsecret
     */
    function user_confirm($username, $confirmsecret) {
        global $DB, $SESSION;
        $id = $DB->get_field_sql("SELECT u.id
              FROM {user} AS u WHERE u.username = '$username'
	          AND u.secret = '$confirmsecret'");
        $user = get_complete_user_data('username', $username, $id);

        if (!empty($user)) {
            if ($user->auth != $this->authtype) {
                return AUTH_CONFIRM_ERROR;

            } else if ($user->secret == $confirmsecret && $user->confirmed) {
                return AUTH_CONFIRM_ALREADY;

            } else if ($user->secret == $confirmsecret) {   // They have provided the secret key to get in
                $DB->set_field("user", "confirmed", 1, array("id"=>$user->id));

                return AUTH_CONFIRM_OK;
            }
        } else {
            return AUTH_CONFIRM_ERROR;
        }
    }

    function prevent_local_passwords() {
        return false;
    }

    /**
     * Returns true if this authentication plugin is 'internal'.
     *
     * @return bool
     */
    function is_internal() {
        return true;
    }

    /**
     * Returns true if this authentication plugin can change the user's
     * password.
     *
     * @return bool
     */
    function can_change_password() {
        return true;
    }

    /**
     * Returns the URL for changing the user's pw, or empty if the default can
     * be used.
     *
     * @return moodle_url
     */
    function change_password_url() {
        return null; // use default internal method
    }

    /**
     * Returns true if plugin allows resetting of internal password.
     *
     * @return bool
     */
    function can_reset_password() {
        return true;
    }

    /**
     * Returns true if plugin can be manually set.
     *
     * @return bool
     */
    function can_be_manually_set() {
        return true;
    }

    /**
     * Returns whether or not the captcha element is enabled.
     * @return bool
     */
    function is_captcha_enabled() {
        return get_config("auth_{$this->authtype}", 'recaptcha');
    }

}
