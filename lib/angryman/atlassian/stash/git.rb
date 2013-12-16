module Atlassian
  module Stash
    module Git

		Base_Path = '/home/git'

      # merge stash api
      def merge
        #
      end

      # create feature branch
      def create_feature_branch(jira_key)
		  Dir.chdir(Base_Path)
		  Dir.mkdir(jira_key)
		  Dir.chdir(jira_key)
		  system("git clone http://#{username}:#{password}@#{host}:#{port}/xxx/#{repository_name}.git")
		  Dir.chdir(repository_name)
		  system("git checkout -b #{jira_key} master")
		  system("git push http://#{username}:#{password}@#{host}:#{port}/xxx/#{repository_name}.git #{jira_key}")

      end

      # create hotfix branch
      def create_hotfix_branch

      end

      # create release branch
      def create_release_branch 

      end
    end
  end
end
