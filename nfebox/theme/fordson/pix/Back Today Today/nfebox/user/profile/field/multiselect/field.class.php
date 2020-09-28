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
 * This file contains the multiselect profile field class.
 *
 * @copyright 2014 Nitin Jain
 * @license   http://www.gnu.org/copyleft/gpl.html GNU Public License
 */

/**
 * Handles displaying and editing the multiselect field.
 *
 * @copyright 2014 Nitin Jain
 * @license   http://www.gnu.org/copyleft/gpl.html GNU Public License
 */
class profile_field_multiselect extends profile_field_base
{
    /**
     * Gets the string representation of the value in the from:
     *
     * {human readable date} ({unix time stamp}).
     *
     * @return string
     */
    
    function edit_field_add($mform)
    {
        // Check if the field is required
        if ($this->field->required) {
            $optional = false;
        } else {
            $optional = true;
        }
	/// Create the form field
        $currentyear = date('Y');
        $startyear = $currentyear - 25;
        $options = array_combine(range($startyear,$currentyear), range($startyear,$currentyear));
	$mform->addElement('select', 'earliest_article_year', format_string($this->field->name), $options);
	$mform->setType('earliest_publication_year', PARAM_INT);
    }
}
