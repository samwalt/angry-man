class Webhook::StashController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  #Started POST "/webhook/stash" for 10.200.188.105 at 2013-11-23 14:54:51 +0800
  #Processing by Webhook::StashController#create as JSON
  #Parameters:
  #{
  #    "repository" = > {
  #    "slug" = > "git-flow-tutorial", "id" = > 3, "name" = > "git-flow-tutorial", "scmId" = > "git", "state" = > "AVAILABLE", "statusMessage" = > "Available", "forkable" = > true, "project" = > {
  #    "key" = > "HEL", "id" = > 2, "name" = > "HelloStash", "public" = > false, "type" = > "NORMAL", "isPersonal" = > false
  #}, "public" = > false
  #}, "refChanges" = > [{
  #                         "refId" = > "refs/heads/develop", "fromHash" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "toHash" = > "cd12567c860e5e3072bab2d06af5b33887c87583", "type" = > "UPDATE"
  #}], "changesets" = > {
  #    "size" = > 1, "limit" = > 100, "isLastPage" = > true, "values" = > [{
  #                                                                            "fromCommit" = > {
  #    "id" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "displayId" = > "c21a660"
  #}, "toCommit" = > {
  #    "id" = > "cd12567c860e5e3072bab2d06af5b33887c87583", "displayId" = > "cd12567", "author" = > {
  #    "name" = > "tao.yang", "emailAddress" = > "tao.yang@shuyun.com"
  #}, "authorTimestamp" = > 1385189685000, "message" = > "issue:测试webhook\nmsg:push到remote看看配置的webhook是否生效", "parents" = > [{
  #                                                                                                                             "id" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "displayId" = > "c21a660"
  #}]
  #}, "changes" = > {
  #    "size" = > 1, "limit" = > 100, "isLastPage" = > true, "values" = > [{
  #                                                                            "contentId" = > "450739f274751e0da76d9624c472dd10f509cb58", "path" = > {
  #    "components" = > ["git-flow-tutorial-api", "src", "main", "java", "com", "shuyun", "gitflow", "TestWebhook.java"], "parent" = > "git-flow-tutorial-api/src/main/java/com/shuyun/gitflow", "name" = > "TestWebhook.java", "extension" = > "java", "toString" = > "git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java"
  #}, "executable" = > false, "percentUnchanged" = > -1, "type" = > "MODIFY", "nodeType" = > "FILE", "srcExecutable" = > false, "link" = > {
  #    "url" = > "/projects/HEL/repos/git-flow-tutorial/commits/cd12567c860e5e3072bab2d06af5b33887c87583#git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java", "rel" = > "self"
  #}
  #}], "start" = > 0, "filter" = > nil
  #}, "link" = > {
  #    "url" = > "/projects/HEL/repos/git-flow-tutorial/commits/cd12567c860e5e3072bab2d06af5b33887c87583#git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java", "rel" = > "self"
  #}
  #}], "start" = > 0, "filter" = > nil
  #}, "stash" = > {
  #    "repository" = > {
  #    "slug" = > "git-flow-tutorial", "id" = > 3, "name" = > "git-flow-tutorial", "scmId" = > "git", "state" = > "AVAILABLE", "statusMessage" = > "Available", "forkable" = > true, "project" = > {
  #    "key" = > "HEL", "id" = > 2, "name" = > "HelloStash", "public" = > false, "type" = > "NORMAL", "isPersonal" = > false
  #}, "public" = > false
  #}, "refChanges" = > [{
  #                         "refId" = > "refs/heads/develop", "fromHash" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "toHash" = > "cd12567c860e5e3072bab2d06af5b33887c87583", "type" = > "UPDATE"
  #}], "changesets" = > {
  #    "size" = > 1, "limit" = > 100, "isLastPage" = > true, "values" = > [{
  #                                                                            "fromCommit" = > {
  #    "id" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "displayId" = > "c21a660"
  #}, "toCommit" = > {
  #    "id" = > "cd12567c860e5e3072bab2d06af5b33887c87583", "displayId" = > "cd12567", "author" = > {
  #    "name" = > "tao.yang", "emailAddress" = > "tao.yang@shuyun.com"
  #}, "authorTimestamp" = > 1385189685000, "message" = > "issue:测试webhook\nmsg:push到remote看看配置的webhook是否生效", "parents" = > [{
  #                                                                                                                             "id" = > "c21a66076a7c588e2693cc3a8f9f98eafd0fa82b", "displayId" = > "c21a660"
  #}]
  #}, "changes" = > {
  #    "size" = > 1, "limit" = > 100, "isLastPage" = > true, "values" = > [{
  #                                                                            "contentId" = > "450739f274751e0da76d9624c472dd10f509cb58", "path" = > {
  #    "components" = > ["git-flow-tutorial-api", "src", "main", "java", "com", "shuyun", "gitflow", "TestWebhook.java"], "parent" = > "git-flow-tutorial-api/src/main/java/com/shuyun/gitflow", "name" = > "TestWebhook.java", "extension" = > "java", "toString" = > "git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java"
  #}, "executable" = > false, "percentUnchanged" = > -1, "type" = > "MODIFY", "nodeType" = > "FILE", "srcExecutable" = > false, "link" = > {
  #    "url" = > "/projects/HEL/repos/git-flow-tutorial/commits/cd12567c860e5e3072bab2d06af5b33887c87583#git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java", "rel" = > "self"
  #}
  #}], "start" = > 0, "filter" = > nil
  #}, "link" = > {
  #    "url" = > "/projects/HEL/repos/git-flow-tutorial/commits/cd12567c860e5e3072bab2d06af5b33887c87583#git-flow-tutorial-api/src/main/java/com/shuyun/gitflow/TestWebhook.java", "rel" = > "self"
  #}
  #}], "start" = > 0, "filter" = > nil
  #}
  #}
  #}
  #Rendered text template (0.0ms)
  #Completed 200 OK in 2ms (Views: 1.0ms | ActiveRecord: 0.0ms)
  def create
    @params = params

	# push code
	Angryman.push_code(stash_key: stash_key)

    render :nothing => true
  end

  def index

  end
end
