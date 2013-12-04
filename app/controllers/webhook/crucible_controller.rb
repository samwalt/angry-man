class Webhook::CrucibleController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  #Started POST "/webhook/crucible" for 10.200.188.105 at 2013-11-23 15:01:33 +0800
  #Processing by Webhook::CrucibleController#create as JSON
  #Parameters:
  #{
  #    "repository" = > {
  #    "name" = > "git-flow-tutorial"
  #  }, "changeset" = > {
  #    "csid" = > "f58ea4888da92e60f8e42b383a356d2c1059dbfd", "displayId" = > "f58ea48", "author" = > "tao.yang <tao.yang@shuyun.com>", "comment" = > "issue:测试webhook msg:push到remote看看配置的webhook是否生效\n", "date" = > 1385190062000, "branches" = > ["develop"], "tags" = > nil, "parents" = > ["3c8186bc12e859bee1e4ab70f920e4c7646c0c76"]
  #  }, "crucible" = > {
  #    "repository" = > {
  #    "name" = > "git-flow-tutorial"
  #    }, "changeset" = > {
  #    "csid" = > "f58ea4888da92e60f8e42b383a356d2c1059dbfd", "displayId" = > "f58ea48", "author" = > "tao.yang <tao.yang@shuyun.com>", "comment" = > "issue:测试webhook msg:push到remote看看配置的webhook是否生效\n", "date" = > 1385190062000, "branches" = > ["develop"], "tags" = > nil, "parents" = > ["3c8186bc12e859bee1e4ab70f920e4c7646c0c76"]
  #    }
  #  }
  #}
  #Rendered text template (0.0ms)
  #Completed 200 OK in 2ms (Views: 0.7ms | ActiveRecord: 0.0ms)

  def create
    @params = params
	#Angryman.review(status)
    render :nothing => true
  end

  def index

  end
end
