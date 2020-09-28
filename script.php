<?php
define('CLI_SCRIPT', true);
require_once(__DIR__. '/nfebox/config.php');
require_once($CFG->dirroot.'/lib/classes/task/completion_regular_task.php');
require_once($CFG->dirroot.'/lib/classes/task/completion_daily_task.php');
try {
increment_revision_number('course', 'cacherev', '');
$obj = new core\task\completion_daily_task();
$obj->execute();
$obj = new core\task\completion_regular_task();
for ($i = 0 ; $i < 2; $i++) {
$obj->execute();
}
} catch (Exception $e) {
$obj->execute();
}
