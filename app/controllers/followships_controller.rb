class FollowshipsController < ApplicationController

  def create
    @followship = current_user.followships.build(following_id: params[:following_id])

    if @followship.save
      redirect_back(fallback_location: root_path), notice: "Successfully followed"
    else
      redirect_back(fallback_location: root_path), alert: "#{@followship.errors.full_messages.to_sentence}"
    end
  end
end