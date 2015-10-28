<style type="text/css">
	body{ margin-top:50px;}
	.nav-tabs .glyphicon:not(.no-margin) { margin-right:10px; }
	.tab-pane .list-group-item:first-child {border-top-right-radius: 0px;border-top-left-radius: 0px;}
	.tab-pane .list-group-item:last-child {border-bottom-right-radius: 0px;border-bottom-left-radius: 0px;}
	.tab-pane .list-group .checkbox { display: inline-block;margin: 0px; }
	.tab-pane .list-group input[type="checkbox"]{ margin-top: 2px; }
	.tab-pane .list-group .glyphicon { margin-right:5px; }
	.tab-pane .list-group .glyphicon:hover { color:#FFBC00; }
	a.list-group-item.read { color: #222;background-color: #F3F3F3; }
	hr { margin-top: 5px;margin-bottom: 10px; }
	.nav-pills>li>a {padding: 5px 10px;}

	.ad { padding: 5px;background: #F5F5F5;color: #222;font-size: 80%;border: 1px solid #E5E5E5; }
	.ad a.title {color: #15C;text-decoration: none;font-weight: bold;font-size: 110%;}
	.ad a.url {color: #093;text-decoration: none;}

</style>
<div class="container">
	<div class="row">
		<div class="col-sm-3 col-md-2">
			<div class="btn-group">
				
			</div>
		</div>
		<div class="col-sm-9 col-md-10">
			<!-- Split button -->
			<div class="btn-group">
				<button type="button" class="btn btn-default">
					<div class="checkbox" style="margin: 0;">
						<label>
							<input type="checkbox">
						</label>
					</div>
				</button>
			</div>
			<button type="button" class="btn btn-default" data-toggle="tooltip" title="Refresh">
				<span class="glyphicon glyphicon-refresh"></span>
			</button>
			<!-- Single button -->
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					Mover a: 
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Mark all as read</a></li>
					<li class="divider"></li>
					<li class="text-center"><small class="text-muted">Select messages to see more actions</small></li>
				</ul>
			</div>
			<div class="pull-right">
				<span class="text-muted"><b>1</b> - <b>50</b> of <b>160</b></span>
				<div class="btn-group btn-group-sm">
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</button>
					<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="row">
		<div class="col-sm-3 col-md-2">
			<hr />
			<ul class="nav nav-pills nav-stacked bmd-nav-pills-info bmd-floating">
				<li class="active"><a href="#"><span class="badge pull-right">28</span> Todos </a>
				</li>
				<li><a href="#"><span class="badge pull-right">12</span> Paquete 1</a></li>
				<li><a href="#"><span class="badge pull-right">9</span> Paquete 2</a></li>
				<li><a href="#"><span class="badge pull-right">7</span> Paquete 3</a></li>
			</ul>
		</div>
		<div class="col-sm-9 col-md-10">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#home" data-toggle="tab">
						<span class="glyphicon glyphicon-inbox"></span>
						Primary
					</a>
				</li>
				<li>
					<a href="#profile" data-toggle="tab">
						<span class="glyphicon glyphicon-user"></span>
						Social
					</a>
				</li>
				<li>
					<a href="#messages" data-toggle="tab">
						<span class="glyphicon glyphicon-tags"></span>
						Promotions
					</a>
				</li>
				<li>
					<a href="#settings" data-toggle="tab">
						<span class="glyphicon glyphicon-plus no-margin"></span>
					</a>
				</li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<div class="list-group">
						<a href="#" class="list-group-item">
							<div class="checkbox">
								<label>
									<input type="checkbox">
								</label>
							</div>
							<span class="glyphicon glyphicon-star-empty"></span>
							<span class="name" style="min-width: 120px;display: inline-block;">Mark Otto</span> 
							<span class="">Nice work on the lastest version</span>
							<span class="text-muted" style="font-size: 11px;">- More content here</span>
							<span class="badge">12:10 AM</span> 
							<span class="pull-right">
								<span class="glyphicon glyphicon-paperclip"></span>
							</span>
						</a>
						<a href="#" class="list-group-item">
							<div class="checkbox">
								<label>
									<input type="checkbox">
								</label>
							</div>
							<span class="glyphicon glyphicon-star-empty"></span>
							<span class="name" style="min-width: 120px;display: inline-block;">Jason Markus</span>
							<span class="">This is big title</span>
							<span class="text-muted" style="font-size: 11px;">- I saw that you had..</span>
							<span class="badge">12:09 AM</span>
							<span class="pull-right">
								<span class="glyphicon glyphicon-paperclip"></span>
							</span>
						</a>
						<a href="#" class="list-group-item read">
							<div class="checkbox">
								<label>
									<input type="checkbox">
								</label>
							</div>
							<span class="glyphicon glyphicon-star"></span>
							<span class="name" style="min-width: 120px;display: inline-block;">Jane Patel</span> 
							<span class="">This is big title</span>
							<span class="text-muted" style="font-size: 11px;">- Hi hello how r u ?</span> 
							<span class="badge">11:30 PM</span> 
							<span class="pull-right">
								<span class="glyphicon glyphicon-paperclip"></span>
							</span>
						</a>
					</div>
				</div>
				<div class="tab-pane fade in" id="profile">
					<div class="list-group">
						<div class="list-group-item">
							<span class="text-center">This tab is empty.</span>
						</div>
					</div>
				</div>
				<div class="tab-pane fade in" id="messages">
					...
				</div>
				<div class="tab-pane fade in" id="settings">
					This tab is empty.
				</div>
			</div>
		</div>
	</div>
</div>
