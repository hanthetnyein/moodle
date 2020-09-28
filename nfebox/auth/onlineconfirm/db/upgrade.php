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
 * Authentication plugin upgrade code
 *
 * @package    auth_onlineconfirm
 * @copyright  2017 Stephen Bourget
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

/**
 * Function to upgrade auth_onlineconfirm.
 * @param int $oldversion the version we are upgrading from
 * @return bool result
 */
function xmldb_auth_onlineconfirm_upgrade($oldversion) {
    global $CFG, $DB;

    if ($oldversion < 2019011900) {
        // Convert info in config plugins from auth/onlineconfirm to auth_onlineconfirm.
        upgrade_fix_config_auth_plugin_names('onlineconfirm');
        upgrade_fix_config_auth_plugin_defaults('onlineconfirm');
        upgrade_plugin_savepoint(true, 2019011900, 'auth', 'onlineconfirm');
    }

    // Automatically generated Moodle v3.3.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.4.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.5.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.6.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.7.0 release upgrade line.
    // Put any upgrade step following this.

    return true;
}
