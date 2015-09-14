<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl" lang="nl">

<head>
	<base href="{C.BASE_URL}" />
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="nl" />
	<meta name="author" content="Lode Claassen" />
	<meta name="revised" content="{C.META_REVISED}" />
	<meta name="description" content="university of babel concept from the interaction design summer school 2008" />
	<meta name="keywords" content="idss08, university of babel, uob" />
	
	<title>{C.BROWSER_TITLE}</title>
	
	<link rel="stylesheet" type="text/css" media="all" href="./template/style.css" />
	<!--[if lte IE 6]><link rel="stylesheet" type="text/css" media="all" href="./template/style_ie6.css" /><![endif]-->
	<!--[if IE 7]><link rel="stylesheet" type="text/css" media="all" href="./template/style_ie7.css" /><![endif]-->
</head><body>
<div id="body">

<ul id="quickmenu">
	<li><a href="{C.BASE_URL}#menu">{M.JUMPTO_MENU}</a></li>
	<li><a href="{C.BASE_URL}#text">{M.JUMPTO_TEXT}</a></li>
</ul>

<div id="header">
	<div id="logo"><a href="{C.BASE_URL}" accesskey="1"><img src="./template/logo.png" alt="University of Babel logo" /></a></div>
	<h1 id="sitetitle"><a href="{C.BASE_URL}" accesskey="1">{C.SITE_TITLE}</a></h1>
	<p id="headline">{C.SITE_HEADLINE}</p>
	<div style="clear: both;"></div>
</div>

<div id="menu">
	<h3>Documentation</h3>
	<ul>
	<li><a href="./">Introduction</a></li>
	<li><a href="./project">Project</a></li>
	<li><a href="./research">Research</a></li>
	<li><a href="./concept">Concept</a></li>
	<li><a href="./scenario">Scenario</a></li>
	<li><a href="./prototype">Prototype</a></li>
	<li><a href="./usability">Usability test</a></li>
	<li><a href="./feedback">Feedback</a></li>
	<li><a href="./conclusions">Conclusions</a></li>
	</ul>
	<h3>Team:</h3>
	<ul>
	<li><a href="./team">Team</a></li>
	<li><a href="./contact">Contact</a></li>
	</ul>
	<h3>Links:</h3>
	<ul>
	<li><a href="http://idss2008-a.blogspot.com/">Process blog</a></li>
	<li><a href="http://universityofbabel.jottit.com/">Docu wiki</a></li>
	</ul>
</div>

<h2 id="title">{D.TITLE}</h2>

<div id="text">
{D.TEXT}
</div>

<p id="copyright">This page is last edited by {D.CREATOR}{D.CREATED}
	<br />{C.COPYRIGHT}</p>

</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-152010-7");
pageTracker._initData();
pageTracker._trackPageview();
</script>
</body></html>
