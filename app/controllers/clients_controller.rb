class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def show
        client = Client.find(params[:id])
        render json: client, include: :memberships
    end

    private
    
    def render_not_found
        render json: { error: "Client Not Found" }, status: 404
    end

end
