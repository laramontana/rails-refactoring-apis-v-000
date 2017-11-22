class RepositoriesController < ApplicationController

  def index
    GithubService.new(session).get_repos
  end

  def create
    GithubService.new(session).create_repo(params[:name])
    redirect_to '/'
  end

end
