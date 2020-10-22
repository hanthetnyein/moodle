<style>

@media only screen and (min-width: 768px) {
	.moodle-dialogue-content {
		width: 350px!important;
	}
	.moodle-dialogue-content .moodle-dialogue-hd {
		border-top-left-radius: 4px!important;
		border-top-right-radius: 4px!important;
	}
	.moodle-dialogue-content {
		border-radius: 5px!important;
		border: none!important;
	}
}

.moodle-dialogue-content {
	background: #fff!important;
}

#region-main h2 {
	color: #0bb04d!important;
	font-size: 22px!important;
}

#region-main h3 {
	color: #1d9ccf!important;
	font-size: 20px!important;
}

.generaltable th {
	color: green!important;	
	background: #fffba8!important;
}

.submitbtns .btn-secondary {
	border-radius: 4px!important;
	background: #65ab65!important;
	color: #fff!important;
	border: none!important;
	font-weight: 600!important;
}

.moodle-dialogue-content .moodle-dialogue-hd {
	color: #fff!important;
	background: #40c94c!important;
}

.moodle-dialogue-content .moodle-dialogue-hd h1 {
	font-size: 21px!important;
	font-weight: 600!important;
	width: 100%!important;
	text-align: center!important;
}

.moodle-dialogue-content .moodle-dialogue-bd {
	padding-bottom: 15px!important;
}

.moodle-dialogue-content .closebutton {
	color: red!important;
}
.moodle-dialogue-content .confirmation-message {
	color: #008000!important;
	font-style: italic!important;
	font-weight: 600!important;
}

.moodle-dialogue-content .btn-primary {
	border-radius: 4px!important;
	background: #EC407A!important;
	-webkit-box-shadow: 0px 0px 5px 0px #F06292!important;
	-moz-box-shadow: 0px 0px 5px 0px #F06292!important;
	-o-box-shadow: 0px 0px 5px 0px #F06292!important;
	-ms-box-shadow: 0px 0px 5px 0px #F06292!important;
	color: #fff!important;
	border: none!important;
	font-weight: 600!important;
}

.moodle-dialogue-content .btn-secondary {
	border-radius: 4px!important;
	-webkit-box-shadow: inset 0px 0px 5px -1px #555!important;
	-moz-box-shadow: inset 0px 0px 5px -1px #555!important;
	-o-box-shadow: inset 0px 0px 5px -1px #555!important;
	-ms-box-shadow: inset 0px 0px 5px -1px #555!important;
	color: #666!important;
	border: none!important;
	font-weight: 600!important;
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
 * This page prints a summary of a quiz attempt before it is submitted.
 *
 * @package   mod_quiz
 * @copyright 2009 The Open University
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */


require_once(__DIR__ . '/../../config.php');
require_once($CFG->dirroot . '/mod/quiz/locallib.php');

$attemptid = required_param('attempt', PARAM_INT); // The attempt to summarise.
$cmid = optional_param('cmid', null, PARAM_INT);

$PAGE->set_url('/mod/quiz/summary.php', array('attempt' => $attemptid));

$attemptobj = quiz_create_attempt_handling_errors($attemptid, $cmid);

// Check login.
require_login($attemptobj->get_course(), false, $attemptobj->get_cm());

// Check that this attempt belongs to this user.
if ($attemptobj->get_userid() != $USER->id) {
    if ($attemptobj->has_capability('mod/quiz:viewreports')) {
        redirect($attemptobj->review_url(null));
    } else {
        throw new moodle_quiz_exception($attemptobj->get_quizobj(), 'notyourattempt');
    }
}

// Check capabilites.
if (!$attemptobj->is_preview_user()) {
    $attemptobj->require_capability('mod/quiz:attempt');
}

if ($attemptobj->is_preview_user()) {
    navigation_node::override_active_url($attemptobj->start_attempt_url());
}

// Check access.
$accessmanager = $attemptobj->get_access_manager(time());
$accessmanager->setup_attempt_page($PAGE);
$output = $PAGE->get_renderer('mod_quiz');
$messages = $accessmanager->prevent_access();
if (!$attemptobj->is_preview_user() && $messages) {
    print_error('attempterror', 'quiz', $attemptobj->view_url(),
            $output->access_messages($messages));
}
if ($accessmanager->is_preflight_check_required($attemptobj->get_attemptid())) {
    redirect($attemptobj->start_attempt_url(null));
}

$displayoptions = $attemptobj->get_display_options(false);

// If the attempt is now overdue, or abandoned, deal with that.
$attemptobj->handle_if_time_expired(time(), true);

// If the attempt is already closed, redirect them to the review page.
if ($attemptobj->is_finished()) {
    redirect($attemptobj->review_url());
}

// Arrange for the navigation to be displayed.
if (empty($attemptobj->get_quiz()->showblocks)) {
    $PAGE->blocks->show_only_fake_blocks();
}

$navbc = $attemptobj->get_navigation_panel($output, 'quiz_attempt_nav_panel', -1);
$regions = $PAGE->blocks->get_regions();
$PAGE->blocks->add_fake_block($navbc, reset($regions));

$PAGE->navbar->add(get_string('summaryofattempt', 'quiz'));
$PAGE->set_title($attemptobj->summary_page_title());
$PAGE->set_heading($attemptobj->get_course()->fullname);

// Display the page.
echo $output->summary_page($attemptobj, $displayoptions);

// Log this page view.
$attemptobj->fire_attempt_summary_viewed_event();
