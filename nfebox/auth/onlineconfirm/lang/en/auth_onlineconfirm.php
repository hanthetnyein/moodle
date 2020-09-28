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
 * Strings for component 'auth_onlineconfirm', language 'en'.
 *
 * @package   auth_onlineconfirm
 * @copyright 1999 onwards Martin Dougiamas  {@link http://moodle.com}
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

$string['auth_onlineconfirmdescription'] = '<p>Online confirm self-registration enables a user to create their own account via a \'Create new account\' button on the login page. The user then is given a link to confirm their account without email confirmation. Future logins just check the username and password against the stored values in the Moodle database.</p><p>Note: In addition to enabling the plugin, Online Confirm self-registration must also be selected from the self registration drop-down menu on the \'Manage authentication\' page.</p>';
$string['auth_onlineconfirmrecaptcha'] = 'Adds a visual/audio confirmation form element to the sign-up page for Online Confirm self-registering users. This protects your site against spammers and contributes to a worthwhile cause. See https://www.google.com/recaptcha for more details.';
$string['auth_onlineconfirmrecaptcha_key'] = 'Enable reCAPTCHA element';
$string['auth_onlineconfirmsettings'] = 'Settings';
$string['pluginname'] = 'Online Confirm self-registration';
$string['privacy:metadata'] = 'The Online Confirm self-registration authentication plugin does not store any personal data.';
$string['onlineconfirm'] = '<p>Please click on the link below to confirm your new account.</p>
   <p>If you need help, please contact the site administrator.</p>';