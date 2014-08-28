class HomePageController < ApplicationController

	def home
		@user = User.new
	end

end
