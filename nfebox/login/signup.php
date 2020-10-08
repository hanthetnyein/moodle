<style> 
.login {
	opacity: 0!important;
}
.login a{
 	display:none!important;
}
#page-navbar {
	display:none!important;
}
#fitem_id_firstname, #fitem_id_profile_field_father_hide {
	display:none!important;
}
.is-invalid {
	border-color: #ced4da!important;
}
#page-header {
	display:none;
}
#region-main-box {
	height:100vh;
	display:flex;
	align-items:center;
	justify-content:center;
}
#region-main {
	position:relative;
}
#page-content {
	background:url(/nfebox/theme/fordson/pix/slider1.jpg) no-repeat!important;
	background-size: cover!important;
}
.card {
	background: linear-gradient(rgba(255,255,255,0.9),rgba(255,255,255,0.9))!important;

}
.card,.card-body {
	border-radius: 6px;
}
label {
	color: #111;
	font-style: italic;
	font-weight: 600;	
}
@media only screen and (min-width: 575px) { 
label::before {
	position: absolute;
	font-style: normal;
	color: #2bad81;
	left: -15px;
}
label[for="id_username"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f007";	
}
label[for="id_password"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f007";	
}
label[for="id_profile_field_age"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f005";	
}
label[for="id_profile_field_last_attended_school"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f02d";
	top: 20px;	
}
label[for="id_earliest_article_year"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f02d";
	top: 10px;	
}
label[for="id_profile_field_current_work"]::before {
	font-family: FontAwesome;
	font-weight: 900;
	content: "\f0b1";
	top: 10px;		
}
}
input[type="text"] {
	border: 1px solid rgba(51, 102, 0, 0.5);
	border-radius: 3px;
}
#id_profile_field_last_attended_school,
#id_earliest_article_year {
	border: 1px solid rgba(51, 102, 0, 0.5);
	border-radius: 3px!important;
}
.fdescription {
	font-weight: 600;
}
</style>
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
 * user signup page.
 *
 * @package    core
 * @subpackage auth
 * @copyright  1999 onwards Martin Dougiamas  http://dougiamas.com
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require('../config.php');
require_once($CFG->dirroot . '/user/editlib.php');
require_once($CFG->libdir . '/authlib.php');
require_once('lib.php');

if (!$authplugin = signup_is_enabled()) {
    print_error('notlocalisederrormessage', 'error', '', 'Sorry, you may not use this page.');
}

$PAGE->set_url('/login/signup.php');
$PAGE->set_context(context_system::instance());
$PAGE->requires->js('/theme/fordson/javascript/jquery-3.5.1.min.js');

// If wantsurl is empty or /login/signup.php, override wanted URL.
// We do not want to end up here again if user clicks "Login".
if (empty($SESSION->wantsurl)) {
    $SESSION->wantsurl = $CFG->wwwroot . '/';
} else {
    $wantsurl = new moodle_url($SESSION->wantsurl);
    if ($PAGE->url->compare($wantsurl, URL_MATCH_BASE)) {
        $SESSION->wantsurl = $CFG->wwwroot . '/';
    }
}

if (isloggedin() and !isguestuser()) {
    // Prevent signing up when already logged in.
    echo $OUTPUT->header();
    echo $OUTPUT->box_start();
    $logout = new single_button(new moodle_url('/login/logout.php',
        array('sesskey' => sesskey(), 'loginpage' => 1)), get_string('logout'), 'post');
    $continue = new single_button(new moodle_url('/'), get_string('cancel'), 'get');
    echo $OUTPUT->confirm(get_string('cannotsignup', 'error', fullname($USER)), $logout, $continue);
    echo $OUTPUT->box_end();
    echo $OUTPUT->footer();
    exit;
}

// If verification of age and location (digital minor check) is enabled.
if (\core_auth\digital_consent::is_age_digital_consent_verification_enabled()) {
    $cache = cache::make('core', 'presignup');
    $isminor = $cache->get('isminor');
    if ($isminor === false) {
        // The verification of age and location (minor) has not been done.
        redirect(new moodle_url('/login/verify_age_location.php'));
    } else if ($isminor === 'yes') {
        // The user that attempts to sign up is a digital minor.
        redirect(new moodle_url('/login/digital_minor.php'));
    }
}

// Plugins can create pre sign up requests.
// Can be used to force additional actions before sign up such as acceptance of policies, validations, etc.
core_login_pre_signup_requests();

$mform_signup = $authplugin->signup_form();

if ($mform_signup->is_cancelled()) {
    redirect('https://nfe.mymebox.org/');

} else if ($user = $mform_signup->get_data()) {

    // Add missing required fields.
    $user = signup_setup_new_user($user);
	

    // Plugins can perform post sign up actions once data has been validated.
    core_login_post_signup_requests($user);

    $data = $authplugin->user_signup($user, true); // prints notice and link to login/index.php
    exit; //never reached
}

// Sing Up Background
$newaccount = get_string('newaccount');
$login      = get_string('login');

$PAGE->navbar->add($login);
$PAGE->navbar->add($newaccount);

$PAGE->set_pagelayout('login');
$PAGE->set_title($newaccount);
$PAGE->set_heading($SITE->fullname);

echo $OUTPUT->header();

if ($mform_signup instanceof renderable) {
    // Try and use the renderer from the auth plugin if it exists.
    try {
        $renderer = $PAGE->get_renderer('auth_' . $authplugin->authtype);
    } catch (coding_exception $ce) {
        // Fall back on the general renderer.
        $renderer = $OUTPUT;
    }
    echo $renderer->render($mform_signup);
} else {
    // Fall back for auth plugins not using renderables.
    $mform_signup->display();
}
echo $OUTPUT->footer();
?>

<script>
   $('#id_username').blur(function(){
	$('#id_firstname').val($('#id_username').val());
   });
   $('#id_password').blur(function(){
	$('#id_profile_field_father_hide').val($('#id_password').val());
   });
   
$("#id_profile_field_age").on("keyup", function () {               
  if ($(this).val() == 0) {
  $(this).val(null);                                     
  }           
});
</script>


