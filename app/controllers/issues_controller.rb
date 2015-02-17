class IssuesController < ApplicationController

	def index
		@issues = Issue.all
		@issue = Issue.new
	end

	def create
		@issue = Issue.new(issue_params)
		@issue.photo = params[:issue][:photo]
		@issue.save
		respond_with @issue
	end


	private

	def issue_params
		params.require(:issue).permit(:description)
	end

end
