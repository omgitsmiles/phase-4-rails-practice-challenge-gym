class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def destroy
        gym = Gym.find_by(id: params[:id])
        gym.destroy
        head :no_content
    end

    private
    
    def render_not_found
        render json: { error: "Gym Not Found" }, status: 404
    end

end
