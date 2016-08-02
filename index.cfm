<cfsetting showdebugoutput="false" >

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Evik James ~ Launch Pad</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  	<!--- ADDED IN MASTER --->

  	<cfscript>
  		RRCList = "1642,9959,10573,8438";
  		ProVidList = "17578";
  		BasicList = "1153,4660,12331";
  		BasicPlusList = "17174";
  		TreatmentList = "2688,13284,10388,2599,2575,2688,15607,1224,971";
  		CatalogList = RRCList & ',' & ProVidList & ',' & BasicList & ',' & BasicPlusList & ',' & TreatmentList;

  		LocalBase = "http://127.0.0.1:8500/avcat";
  		DevBase = "http://dev.av-iq.com/avcat";
  		StageBase = "http://stage.av-iq.com/avcat";
  		LiveBase = "http://www.av-iq.com/avcat";

		Links = structNew();
		i = 1;
		Links['desc'][i] = "Home";
		Links['link'][i] = "";

		i++;
		Links['desc'][i] = "Dashboard";
		Links['link'][i] = "?myiq-dashboard";

		i++;
		Links['desc'][i] = "Registration";
		Links['link'][i] = "?myiq-registration=t";

		i++;
		Links['desc'][i] = "Showroom ~ Electro-Voice";
		Links['link'][i] = "?manufacturer=electro-voice";

		i++;
		Links['desc'][i] = "Category ~ Microphones";
		Links['link'][i] = "?category=microphones";

		i++;
		Links['desc'][i] = "Subcategory ~ Beltpacks";
		Links['link'][i] = "?subcategory=beltpack-receivers-transmitters";

		i++;
		Links['desc'][i] = "Product";
		Links['link'][i] = "?manufacturer=electro-voice&product=bp-300-a";

		i++;
		Links['desc'][i] = "Keyword Search ~ LCD";
		Links['link'][i] = "?keywordsearch=t&searchstring=lcd";


  	</cfscript>

	<cfoutput>
	<div class="container theme-showcase" role="main">
		<br>
		<div class="jumbotron">
	        <h1>EJ ~ Launch Pad</h1>
		</div>

		<div class="table ">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>Catalog</th>
						<th>Type</th>
						<th>Local</th>
						<th>Dev</th>
						<th>Stage</th>
						<th>Live</th>
					</tr>
				</thead>
				<tbody>
					<cfloop list="#CatalogList#" index="CatID">
						<cfscript>
							LocalHREF = LocalBase & "/ctl#CatID#/index.cfm";
							DevHREF = DevBase & "/ctl#CatID#/index.cfm";
							StageHREF = StageBase & "/ctl#CatID#/index.cfm";
							LiveHREF = LiveBase & "/ctl#CatID#/index.cfm";
						</cfscript>
						<tr>
							<td>#CatID#</td>
							<cfif listFind(RRCList, CatID)>
								<td><span class="label label-danger">RRC</span></td>
							<cfelseif listFind(ProVidList, CatID)>
								<td><span class="label label-success">Pro Video</span></td>
							<cfelseif listFind(BasicList, CatID)>
								<td><span class="label label-warning">Basic</span></td>
							<cfelseif listFind(BasicPlusList, CatID)>
								<td><span class="label label-success">Basic Plus</span></td>
							<cfelse>
								<td><span class="label label-default">Treatment</span></td>
							</cfif>
							<!--- LOCAL --->
							<td><div class="btn-group">
								<button type="button" class="btn btn-default">Action</button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<cfloop from="1" to="#structCount(Links['desc'])#" index="i">
										<li><a href="#LocalHREF##Links['link'][i]#">#Links['desc'][i]#</a></li>
									</cfloop>
								</ul>
							</div></td>

							<!--- DEV --->
							<td><div class="btn-group">
								<button type="button" class="btn btn-default">Action</button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<cfloop from="1" to="#structCount(Links['desc'])#" index="i">
										<li><a href="#DevHREF##Links['link'][i]#">#Links['desc'][i]#</a></li>
									</cfloop>
								</ul>
							</div></td>

							<!--- STAGE --->
							<td><div class="btn-group">
								<button type="button" class="btn btn-default">Action</button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<cfloop from="1" to="#structCount(Links['desc'])#" index="i">
										<li><a href="#StageHREF##Links['link'][i]#">#Links['desc'][i]#</a></li>
									</cfloop>
								</ul>
							</div></td>

							<!--- LIVE --->
							<td><div class="btn-group">
								<button type="button" class="btn btn-default">Action</button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<cfloop from="1" to="#structCount(Links['desc'])#" index="i">
										<li><a href="#LiveHREF##Links['link'][i]#">#Links['desc'][i]#</a></li>
									</cfloop>
								</ul>
							</div></td>

						</tr>
					</cfloop>
				</tbody>
			</table>
		</div>

	</div>
	</cfoutput>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

  </body>
</html>