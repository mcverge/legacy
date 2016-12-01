<style>
* {
  border-radius: 0 !important;
}

* {
  -webkit-border-radius: 0 !important;
     -moz-border-radius: 0 !important;
          border-radius: 0 !important;
}

@border-radius-base:        0px;
@border-radius-large:       0px;
@border-radius-small:       0px;
</style>
<br />
<body background="https://i.gyazo.com/fe2e45c80f1320b9c9e21460302450be.png" style="background-size:100%; background-attachment: fixed;">
<div class="container">
<div style="background:white" class="well">
  <div class="row">
    <div class="col-md-9">
	  <ol class="breadcrumb">
	    {$BREADCRUMBS}
	  </ol>
	  <h3 style="display: inline;">{$FORUM_TITLE}</h3><span class="pull-right">{$NEW_TOPIC_BUTTON}</span><br /><br />
	  {$NO_TOPICS}
	  <br /><br /><br />
	  <div class="panel panel-default">
	    <div class="panel-heading">{$STATISTICS}</div>
		<div class="panel-body">
		  {$USERS_REGISTERED}<br />{$LATEST_MEMBER}
		  <hr>
		  <strong>{$ONLINE_USERS}</strong><br />
		  {$ONLINE_USERS_LIST}
		</div>
	  </div>
	</div>
	<div class="col-md-3">
	  {$SEARCH_FORM}
	  <br />
	  <div class="panel panel-default">
	    <div class="panel-heading">
		  {$LATEST_POSTS}
		</div>
		<div class="panel-body">
		  {foreach from=$postsArray item=post}
		    <div class="row">
			  <div class="col-md-3">
			    <div class="frame">
				  <a href="/profile/{$post.topic_last_user_mcname}">{$post.topic_last_user_avatar}</a>
			    </div>
			  </div>
			  <div class="col-md-9">
			    <a href="/forum/view_topic/?tid={$post.topic_id}">{$post.topic_title}</a><br />
			    {$BY} <a href="/profile/{$post.topic_last_user_mcname}">{$post.topic_last_user_username}</a><br />
				<span rel="tooltip" data-trigger="hover" data-original-title="{$post.topic_reply_date}">{$post.topic_reply_rough} {$AGO}</span>
			  </div>
		    </div>
			<br />
		  {/foreach}
		</div>
	  </div>
	</div>
  </div>
</div>
</div>