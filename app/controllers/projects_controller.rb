class ProjectsController < ApplicationController

  before_action :set_organization
  before_action :set_project, only: %i[show]

  def index
  end

  def show
  end

  private

  def set_organization
    @organization = Organization.find_by_name!(params[:organization_name])
  end

  def set_project
    @project = @organization.projects.find_by_name!(params[:project_name])
  end
end
