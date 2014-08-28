module UsersHelper

	#add gravatar image as a user's profile image
	def user_gravatar(user)		
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, class: "gravatar")
	end
end
