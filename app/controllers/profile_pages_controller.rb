class ProfilePagesController < ApplicationController
	before_action :authenticate_user!

	def show
		@profile = User.find(params[:id])
		@reviews = Review.where(user_id: @profile.id).order(created_at: :desc).limit(5)
	end
end
