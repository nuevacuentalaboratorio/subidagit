class UsersController < ApplicationController

	def show
		sign_out :user
		redirect_to "/"
	end

end