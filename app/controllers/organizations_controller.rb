class OrganizationsController < ApplicationController

  before_action :set_organization, only: %i[show]

  def show
  end

  private

  def set_organization
    @organization = Organization.find_by_name!(params[:name])
  end
end
