class Webhook::JiraController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def create
    @params = params
	case @params[:status]
	when 'InProgress'
		# create feature branch in Stash
	when 'Review'
		# send email to developer to review code
	when 'Reopen'
		# send email to developer to fix bug
	when 'Merge'
		# merge and delete feature branch
	else
		# others
	end
    render :nothing => true
  end

  def index

  end
end
