<style>
.form-control.is-invalid {
    border-color: #ced4da!important;
    padding-right: 0!important;
    background-image: none!important;
}
.ftoggler {
    display: none;
}
#id_email, #id_email2 {
    display:none!important;
}
.collapseexpand {
    display:none!important;
}
#region-main {
    
}
.container-fluid {
	
}
.justify-content-md-center {
	
}

@media only screen and (max-width: 404px) {

.justify-content-md-center {
	
}
.container-fluid {
	padding: 0!important;
}
#region-main {
	padding: 0!important;
}
.col-md-8 {
	padding: 0!important;
}
.card-body {
	padding: 0!important;
}
}

@media only screen and (min-width: 576px) {
	input {
	width: 100%!important;
}
}

.card-body {
	box-shadow: 0px 0px 5px 0px #000;
}
.btn-primary {
	background:#EC407A!important;
	font-weight: bold!important;
	border-radius: 4px!important;
	border:none!important;
	box-shadow:0px 0px 5px 0px #F06292;
}
.btn-secondary {
	font-weight: bold!important;
	border-radius: 4px!important;
	border:none!important;
	box-shadow:inset 0px 0px 5px -1px #555;
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
 * User sign-up form.
 *
 * @package    core
 * @subpackage auth
 * @copyright  1999 onwards Martin Dougiamas  http://dougiamas.com
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

require_once($CFG->libdir.'/formslib.php');
require_once($CFG->dirroot.'/user/profile/lib.php');
require_once($CFG->dirroot . '/user/editlib.php');
require_once('lib.php');

class login_signup_form extends moodleform implements renderable, templatable {
    function definition() {
        global $USER, $CFG;

        $mform = $this->_form;

        $mform->addElement('header', 'createuserandpass', get_string('createuserandpass'), '');

        $mform->addElement('text', 'username', 'အမည်', 'maxlength="100" size="12" autocapitalize="none"');
        $mform->setType('username', PARAM_RAW);
        $mform->addRule('username', get_string('missingusername'), 'required', 'client');

        
        $mform->addElement('text', 'password', 'အဖေအမည်', 'maxlength="32" size="12"');
        $mform->setType('password', core_user::get_property_type('password'));
        $mform->addRule('password', get_string('missingpassword'), 'required', 'client');
       
	$mform->addElement('text', 'email');
        $mform->addElement('text', 'email2');
     

        $namefields = useredit_get_required_name_fields();
        foreach ($namefields as $field) {
            $mform->addElement('text', $field, 'အမည်', 'maxlength="100" size="30"');
            $mform->setType($field, core_user::get_property_type('firstname'));
            $stringid = 'missing' . $field;
            if (!get_string_manager()->string_exists($stringid, 'moodle')) {
                $stringid = 'required';
            }
            $mform->addRule($field, get_string($stringid), 'required', 'client');
        }



        profile_signup_fields($mform);

        if (signup_captcha_enabled()) {
            $mform->addElement('recaptcha', 'recaptcha_element', get_string('security_question', 'auth'));
            $mform->addHelpButton('recaptcha_element', 'recaptcha', 'auth');
            $mform->closeHeaderBefore('recaptcha_element');
        }

        // Hook for plugins to extend form definition.
        core_login_extend_signup_form($mform);

        // Add "Agree to sitepolicy" controls. By default it is a link to the policy text and a checkbox but
        // it can be implemented differently in custom sitepolicy handlers.
        $manager = new \core_privacy\local\sitepolicy\manager();
        $manager->signup_form($mform);

        // buttons
        $this->add_action_buttons(true, 'မှတ်ပုံတင်မည်');

    }

    function definition_after_data(){
        $mform = $this->_form;
        $mform->applyFilter('username', 'trim');

        // Trim required name fields.
        foreach (useredit_get_required_name_fields() as $field) {
            $mform->applyFilter($field, 'trim');
        }
    }

    /**
     * Validate user supplied data on the signup form.
     *
     * @param array $data array of ("fieldname"=>value) of submitted data
     * @param array $files array of uploaded files "element_name"=>tmp_file_path
     * @return array of "element_name"=>"error_description" if there are errors,
     *         or an empty array if everything is OK (true allowed for backwards compatibility too).
     */
    public function validation($data, $files) {
	global $CFG, $DB;
        $errors = parent::validation($data, $files);
	$username = $data['username'];
	$username = preg_replace("/\s+/", "", $username);
        $username = strtolower($username);

	$father=array();
	$type_father_name = $DB->get_field_sql("SELECT f.id 
              FROM {user_info_field} AS f
              WHERE f.shortname = 'father_hide'");

	$sql = "SELECT d.data
              FROM {user_info_data} AS d JOIN {user} AS u ON u.id = d.userid JOIN {user_info_field} AS f
             ON d.fieldid = f.id WHERE f.id = '$type_father_name' AND u.username = '$username'";

	$params = array('NULL');
	$father = $DB->get_fieldset_sql($sql, $params, IGNORE_MULTIPLE);

	$count = 0; foreach ($father as $fat) { $count++; }
	$cnt = $count;

        // Extend validation for any form extensions from plugins.
        $errors = array_merge($errors, core_login_validate_extend_signup_form($data));

        if (signup_captcha_enabled()) {
            $recaptchaelement = $this->_form->getElement('recaptcha_element');
            if (!empty($this->_form->_submitValues['g-recaptcha-response'])) {
                $response = $this->_form->_submitValues['g-recaptcha-response'];
                if (!$recaptchaelement->verify($response)) {
                    $errors['recaptcha_element'] = get_string('incorrectpleasetryagain', 'auth');
                }
            } else {
                $errors['recaptcha_element'] = get_string('missingrecaptchachallengefield');
            }
        }
        $errors += signup_validate_data($data, $files, $father, $cnt);

        return $errors;
    }

    /**
     * Export this data so it can be used as the context for a mustache template.
     *
     * @param renderer_base $output Used to do a final render of any components that need to be rendered for export.
     * @return array
     */
    public function export_for_template(renderer_base $output) {
        ob_start();
        $this->display();
        $formhtml = ob_get_contents();
        ob_end_clean();
        $context = [
            'formhtml' => $formhtml
        ];
        return $context;
    }
}
