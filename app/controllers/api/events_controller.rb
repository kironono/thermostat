module Api
  class EventsController < ApplicationController
    
    before_action :set_project

    def create
      payload = params[:body]
      head :created
    end

    private

    def set_project
      @project = Project.find(params[:project_id])
    end
  end
end
