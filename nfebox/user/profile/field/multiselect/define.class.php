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
 * Define multiselect field.
 *
 * @copyright 2014 Nitin Jain
 * @license   http://www.gnu.org/copyleft/gpl.html GNU Public License
 */
class profile_define_multiselect extends profile_define_base
{
    /**
     * Sets the hidden value for default value.
     * @param object $form
     */
    function define_form_specific($form)
    {
        $form->addElement('hidden', 'defaultdata', '0');
        $form->setType('defaultdata', PARAM_INT);
    }

    /**
     * Sets default value to 0.
     *
     * @param   object   $data data from the add/edit profile field form
     * @return  object   $data with defaultdata attribute set to zero
     */
    function define_save_preprocess($data)
    {
        $data->defaultdata = '0';
        return $data;
    }
}
