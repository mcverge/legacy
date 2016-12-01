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
<body background="https://i.gyazo.com/fe2e45c80f1320b9c9e21460302450be.png" style="background-size:100%; background-attachment: fixed;">
<div class="container">
<div style="background:white" class="well">
  <div class="row">
	<div class="col-md-9">
	  <ol class="breadcrumb">
	    {$BREADCRUMBS}
	  </ol>
	  <h3 style="display:inline;">{$FORUM_TITLE}</h3>
	  <span class="pull-right">{$NEW_TOPIC_BUTTON}</span>
	  <br /><br />
	  {if $SUBFORUMS_EXIST == 1}
	  <table class="table table-bordered" style="table-layout:fixed;">
		<colgroup>
		  <col style="width:50%">
		  <col style="width:10%">
		  <col style="width:40%">
		</colgroup>
		<thead>
		  <tr>
			<th>{$FORUM}</th>
			<th>{$STATS}</th>
			<th>{$LAST_POST}</th>
		  </tr>
		</thead>
		<tbody>
		  {foreach from=$SUBFORUMS item=subforum}
		    <tr>
			  <td>
			    <a href="/forum/view_forum/?fid={$subforum.forum_id}">{$subforum.forum_title}&nbsp</a>
				<br />
				{$subforum.forum_description}<br />
			  </td>
			  <td>
			    <strong>{$subforum.forum_topics}</strong> {$TOPICS_LANGUAGE}<br />
				<strong>{$subforum.forum_posts}</strong> {$POSTS}<br />
			  </td>
			  <td>
			    {if $subforum.forum_topics eq 0}
				  {$NO_TOPICS}
				{else}
				  {* There are topics, display the latest *}
				  <div class="row">
					<div class="col-md-2">
					  <div class="frame">
						<a href="/profile/{$subforum.last_reply_mcname}">{$subforum.last_reply_avatar}</a>
					  </div>
					</div>
					<div class="col-md-9">
					  <a href="/forum/view_topic/?tid={$subforum.last_topic_id}">{$subforum.last_topic_name}</a><br />
					  {$BY} <a href="/profile/{$subforum.last_reply_mcname}">{$subforum.last_reply_username}</a><br />{$subforum.last_topic_time}
					</div>
				  </div>
				{/if}
			  </td>
			</tr>
		  {/foreach}
		</tbody>
	  </table>
	  {/if}
	  <table class="table table-bordered" style="table-layout:fixed;">
		<colgroup>
		  <col style="width:50%">
		  <col style="width:10%">
		  <col style="width:40%">
		</colgroup>
		<thead>
		  <tr>
			<th>{$TOPIC}</th>
			<th>{$STATS}</th>
			<th>{$LAST_POST}</th>
		  </tr>
		</thead>
		<tbody>
	      {foreach from=$STICKIES item=topic}
			<tr>
			  <td>
			    <i class="fa fa-thumb-tack"></i> {if $topic.locked == 1}<i class="fa fa-lock"></i> {/if}<a href="/forum/view_topic/?tid={$topic.topic_id}">{$topic.topic_title}</a>
				<br />
				{$BY} <a href="/profile/{$topic.topic_poster_mcname}">{$topic.topic_poster}</a> | <span rel="tooltip" data-trigger="hover" data-original-title="{$topic.topic_created}">{$topic.topic_created_rough} {$AGO}</span>
			  </td>
			  <td>
			    <strong>{$topic.views}</strong> {$VIEWS}<br />
				<strong>{$topic.posts}</strong> {$POSTS}<br />
			  </td>
			  <td>
				<div class="row">
				  <div class="col-md-2">
					<div class="frame">
					  <a href="/profile/{$topic.last_reply_mcname}">{$topic.last_reply_avatar}</a>
					</div>
				  </div>
				  <div class="col-md-9">
					<a href="/profile/{$topic.last_reply_mcname}">{$topic.last_reply_username}</a><br />
					<span rel="tooltip" data-trigger="hover" data-original-title="{$topic.last_post_created}">{$topic.last_post_rough} {$AGO}</span>
				  </div>
				</div>
			  </td>
			</tr>
		  {/foreach}
	      {foreach from=$TOPICS item=topic}
			<tr>
			  <td>
			    {if $topic.locked == 1}<i class="fa fa-lock"></i> {/if}<a href="/forum/view_topic/?tid={$topic.topic_id}">{$topic.topic_title}</a>
				<br />
				{$BY} <a href="/profile/{$topic.topic_poster_mcname}">{$topic.topic_poster}</a> | <span rel="tooltip" data-trigger="hover" data-original-title="{$topic.topic_created}">{$topic.topic_created_rough} {$AGO}</span>
			  </td>
			  <td>
			    <strong>{$topic.views}</strong> {$VIEWS}<br />
				<strong>{$topic.posts}</strong> {$POSTS}<br />
			  </td>
			  <td>
				<div class="row">
				  <div class="col-md-2">
					<div class="frame">
					  <a href="/profile/{$topic.last_reply_mcname}">{$topic.last_reply_avatar}</a>
					</div>
				  </div>
				  <div class="col-md-9">
					<a href="/profile/{$topic.last_reply_mcname}">{$topic.last_reply_username}</a><br />
					<span rel="tooltip" data-trigger="hover" data-original-title="{$topic.last_post_created}">{$topic.last_post_rough} {$AGO}</span>
				  </div>
				</div>
			  </td>
			</tr>
		  {/foreach}
		</tbody>
	  </table>
	  {$PAGINATION}
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