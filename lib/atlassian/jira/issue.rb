module Atlassian
  module Jira
    module Issue

      # 修改issue的状态
      def status_change(issueKey)
        "/rest/api/2/issue/#{issueKey}/transitions?expand=transitions.fidlds"
      end

      # 将issue分配给某个用户
      def assgin_user(issueKey)
        "/rest/api/2/issue/#{issueKey}"
      end

    end
  end
end