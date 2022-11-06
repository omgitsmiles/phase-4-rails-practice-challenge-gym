class MembershipsController < ApplicationController

    def create
        member = Membership.create(gym_id: params[:gym_id], client_id: params[:client_id, charge: params[:charge]])
        render json: member
    end

end
