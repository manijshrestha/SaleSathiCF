<html>
<head>
	<title>Salesathi</title>
	<link rel="stylesheet" href="${resource(dir:'css',file:'salesathi.css')}" />
	<link rel="stylesheet" href="${resource(dir:'css',file:'grid.css')}" />
	<link href='http://fonts.googleapis.com/css?family=Play' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="content" class="container_12">
<div id="action_bar" class="grid_12">
		<div id="search_area">
			<input id="search_box" type = "text" name = "q"/>
			<input id="go_btn" type = "button" value = "Search"/>
		</div>
</div>
<div class="clear">&nbsp;</div>
<div id="left_pane" class="grid_3">
	Navi Here
</div>

<div id="main_pane" class="grid_6">
	<g:render template="postings" model="${['posts':posts]}"/>
</div>

<div id="right_pane" class="grid_3">
	Add here
</div>

</div>
</body>
</html>