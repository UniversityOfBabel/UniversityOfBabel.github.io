<?php
/*-----------------------------------------------------------------------------
	load all needed config (.ini) and template (.tpl) files
-----------------------------------------------------------------------------*/
define('NL', "\r\n");
define('SLASH', DIRECTORY_SEPARATOR);
$config = parse_ini_file('config.ini');
$messages = parse_ini_file('messages.ini');
$template = file_get_contents('template/template.tpl');
$data = array();
function _print_r($a) { echo '<pre>'; print_r($a); echo '</pre>'; }
if (empty($_GET['p'])) $_GET['p'] = 'introduction';

/*-----------------------------------------------------------------------------
	process the text
-----------------------------------------------------------------------------*/
function process_text($text) {
	$text = str_replace("\n", "</p>\r\n<p>", $text);
	
	$search = array('<p><div class=\'indent\'>',	'</div></p>',	'<p><h3',	'</h3></p>',	'<p><h4',	'</h4></p>',	'<p><ul>',	'<p><ol>',	'</ul></p>',	'</ol></p>',	'<p></p>',	'<ul></p>',	'<ol></p>',	'</li></p>',	'<p></ul>',	'<p></ol>',	'<p><li>');
	$replace = array('<div class=\'indent\'><p>',	'</p></div>',	'<h3',		'</h3>',			'<h4',			'</h4>',			'<ul>',		'<ol>',			'</ul>',			'</ol>',			'',					'<ul>',			'<ol>',			'</li>',			'</ul>',		'</ol>',		'<li>');
	$text = str_replace($search, $replace, $text);
	
	return $text;
}

/*-----------------------------------------------------------------------------
	get the page contents
-----------------------------------------------------------------------------*/
$path_to_pagefile = 'pages'.SLASH.$_GET['p'].'.ini';
$path_to_pagefile = realpath($path_to_pagefile);

if (file_exists($path_to_pagefile)) {
	$page_info = parse_ini_file($path_to_pagefile);
	
	$page_info['text'] = process_text('<p>'.$page_info['text'].'</p>');
	
	$data['title'] = $page_info['title'];
	$data['text'] = $page_info['text'];
	$data['creator'] = (empty($page_info['creator'])) ? 'group A' : $page_info['creator'];
	$data['created'] = (empty($page_info['created'])) ? '' : ' at '.$page_info['created'];
}
else {
	$data['title'] = $messages['unknown_title'];
	$data['text'] = $messages['unknown_text'];
}

/*-----------------------------------------------------------------------------
	replace data in the template
-----------------------------------------------------------------------------*/
$search = array();
$replace = array();
$data_parts = array('config', 'data', 'messages');
foreach ($data_parts as $part_name) {
	foreach ($$part_name as $key => $value) {
		$search[] = '{'.strtoupper($part_name[0]).'.'.strtoupper($key).'}';
		$replace[] = $value;
	}
}
$page = str_replace($search, $replace, $template);

/*-----------------------------------------------------------------------------
	echo and die
-----------------------------------------------------------------------------*/
echo $page;
die;
?>
