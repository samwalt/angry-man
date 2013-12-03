require 'angryman/tasks/task'

class Webhook::JiraController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  # Started POST "/webhook/jira?user_id=admin" for 10.200.188.105 at 2013-11-23 14:35:25 +0800
  # Processing by Webhook::JiraController#create as */*
  # Parameters:
  #{
  #"webhookEvent" = > "jira:issue_updated", "user" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "issue" = > {
  #    "id" = > "10000", "self" = > "http://10.200.188.105:8075/rest/api/2/issue/10000", "key" = > "GITFLOWPM-1", "fields" = > {
  #    "summary" = > "REST ye merry gentlemen.", "progress" = > {
  #    "progress" = > 0, "total" = > 0
  #}, "timetracking" = > {}, "issuetype" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issuetype/1", "id" = > "1", "description" = > "A problem which impairs or prevents the functions of the product.", "iconUrl" = > "http://10.200.188.105:8075/images/icons/issuetypes/bug.png", "name" = > "Bug", "subtask" = > false
  #}, "votes" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issue/GITFLOWPM-1/votes", "votes" = > 0, "hasVoted" = > false
  #}, "resolution" = > nil, "fixVersions" = > nil, "resolutiondate" = > nil, "timespent" = > nil, "reporter" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "aggregatetimeoriginalestimate" = > nil, "created" = > "2013-11-05T18:40:49.000+0800", "updated" = > "2013-11-23T14:34:09.000+0800", "description" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n\r\njjjjjj \r\n", "priority" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/priority/3", "iconUrl" = > "http://10.200.188.105:8075/images/icons/priorities/major.png", "name" = > "Major", "id" = > "3"
  #}, "duedate" = > nil, "issuelinks" = > nil, "watches" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issue/GITFLOWPM-1/watchers", "watchCount" = > 1, "isWatching" = > true
  #}, "worklog" = > {
  #    "startAt" = > 0, "maxResults" = > 20, "total" = > 0, "worklogs" = > nil
  #}, "subtasks" = > nil, "status" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/status/10001", "description" = > "review", "iconUrl" = > "http://10.200.188.105:8075/images/icons/statuses/generic.png", "name" = > "review", "id" = > "10001"
  #}, "labels" = > nil, "workratio" = > -1, "assignee" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "attachment" = > nil, "aggregatetimeestimate" = > nil, "project" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/project/10000", "id" = > "10000", "key" = > "GITFLOWPM", "name" = > "Git-flow", "avatarUrls" = > {
  #    "16x16" = > "http://10.200.188.105:8075/secure/projectavatar?size=xsmall&pid=10000&avatarId=10011", "24x24" = > "http://10.200.188.105:8075/secure/projectavatar?size=small&pid=10000&avatarId=10011", "32x32" = > "http://10.200.188.105:8075/secure/projectavatar?size=medium&pid=10000&avatarId=10011", "48x48" = > "http://10.200.188.105:8075/secure/projectavatar?pid=10000&avatarId=10011"
  #}
  #}, "versions" = > nil, "environment" = > nil, "timeestimate" = > nil, "aggregateprogress" = > {
  #    "progress" = > 0, "total" = > 0
  #}, "lastViewed" = > "2013-11-23T14:34:01.282+0800", "components" = > nil, "comment" = > {
  #    "startAt" = > 0, "maxResults" = > 0, "total" = > 0, "comments" = > nil
  #}, "timeoriginalestimate" = > nil, "aggregatetimespent" = > nil
  #}
  #}, "changelog" = > {
  #    "id" = > "10110", "items" = > [{
  #                                       "field" = > "description", "fieldtype" = > "jira", "from" = > nil, "fromString" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n", "to" = > nil, "toString" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n\r\njjjjjj \r\n"
  #}]
  #}, "timestamp" = > 1385188449800, "user_id" = > "admin", "jira" = > {
  #    "webhookEvent" = > "jira:issue_updated", "user" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "issue" = > {
  #    "id" = > "10000", "self" = > "http://10.200.188.105:8075/rest/api/2/issue/10000", "key" = > "GITFLOWPM-1", "fields" = > {
  #    "summary" = > "REST ye merry gentlemen.", "progress" = > {
  #    "progress" = > 0, "total" = > 0
  #}, "timetracking" = > {}, "issuetype" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issuetype/1", "id" = > "1", "description" = > "A problem which impairs or prevents the functions of the product.", "iconUrl" = > "http://10.200.188.105:8075/images/icons/issuetypes/bug.png", "name" = > "Bug", "subtask" = > false
  #}, "votes" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issue/GITFLOWPM-1/votes", "votes" = > 0, "hasVoted" = > false
  #}, "resolution" = > nil, "fixVersions" = > nil, "resolutiondate" = > nil, "timespent" = > nil, "reporter" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "aggregatetimeoriginalestimate" = > nil, "created" = > "2013-11-05T18:40:49.000+0800", "updated" = > "2013-11-23T14:34:09.000+0800", "description" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n\r\njjjjjj \r\n", "priority" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/priority/3", "iconUrl" = > "http://10.200.188.105:8075/images/icons/priorities/major.png", "name" = > "Major", "id" = > "3"
  #}, "duedate" = > nil, "issuelinks" = > nil, "watches" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/issue/GITFLOWPM-1/watchers", "watchCount" = > 1, "isWatching" = > true
  #}, "worklog" = > {
  #    "startAt" = > 0, "maxResults" = > 20, "total" = > 0, "worklogs" = > nil
  #}, "subtasks" = > nil, "status" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/status/10001", "description" = > "review", "iconUrl" = > "http://10.200.188.105:8075/images/icons/statuses/generic.png", "name" = > "review", "id" = > "10001"
  #}, "labels" = > nil, "workratio" = > -1, "assignee" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/user?username=admin", "name" = > "admin", "emailAddress" = > "yangtao309@gmail.com", "avatarUrls" = > {
  #    "16x16" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=16", "24x24" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=24", "32x32" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=32", "48x48" = > "http://www.gravatar.com/avatar/4acb579002e81580f52f5805a563d010?d=mm&s=48"
  #}, "displayName" = > "Yang Tao", "active" = > true
  #}, "attachment" = > nil, "aggregatetimeestimate" = > nil, "project" = > {
  #    "self" = > "http://10.200.188.105:8075/rest/api/2/project/10000", "id" = > "10000", "key" = > "GITFLOWPM", "name" = > "Git-flow", "avatarUrls" = > {
  #    "16x16" = > "http://10.200.188.105:8075/secure/projectavatar?size=xsmall&pid=10000&avatarId=10011", "24x24" = > "http://10.200.188.105:8075/secure/projectavatar?size=small&pid=10000&avatarId=10011", "32x32" = > "http://10.200.188.105:8075/secure/projectavatar?size=medium&pid=10000&avatarId=10011", "48x48" = > "http://10.200.188.105:8075/secure/projectavatar?pid=10000&avatarId=10011"
  #}
  #}, "versions" = > nil, "environment" = > nil, "timeestimate" = > nil, "aggregateprogress" = > {
  #    "progress" = > 0, "total" = > 0
  #}, "lastViewed" = > "2013-11-23T14:34:01.282+0800", "components" = > nil, "comment" = > {
  #    "startAt" = > 0, "maxResults" = > 0, "total" = > 0, "comments" = > nil
  #}, "timeoriginalestimate" = > nil, "aggregatetimespent" = > nil
  #}
  #}, "changelog" = > {
  #    "id" = > "10110", "items" = > [{
  #                                       "field" = > "description", "fieldtype" = > "jira", "from" = > nil, "fromString" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n", "to" = > nil, "toString" = > "Creating of an issue using project keys and issue type names using the REST API\r\n\r\ntest webhook  ok \r\n\r\njjjjjj \r\n"
  #}]
  #}, "timestamp" = > 1385188449800
  #}
  #}
  # Rendered text template (0.0ms)
  # Completed 200 OK in 1ms (Views: 0.5ms | ActiveRecord: 0.0ms)
  def create
    @params = params

	jira_key = @params["issue"]["key"]

	# create a task workflow
	Angryman.create_task_workflow(jira_key) if status.eql?('create_issue')

	# fix jira issue
	Angryman.fix_jira_issue(jira_key) if status.eql?('fix_jira_issue')

    render :nothing => true
  end

  def index

  end
end
