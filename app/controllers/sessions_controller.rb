class SessionsController < ApplicationController
	def create
			#raise env["omniauth.auth"].to_yaml #returns hash with details about user being authd
			
			#user = User.from_omniauth(env["omniauth.auth"])
			
		Twitter.configure do |config|
		  config.consumer_key = "akZeVLUrNqzdDkev9Luo6g"
		  config.consumer_secret = "7t7hd4OMUiMzU3xl6K8Z3TMojJXnpHtJWAP7Sw2a8wM"
		  config.oauth_token = request.env["omniauth.auth"]["credentials"]["token"]
		  config.oauth_token_secret = request.env["omniauth.auth"]["credentials"]["secret"]
		end
			
		session[:user_id] = request.env["omniauth.auth"]["info"]["nickname"]
			#root_url = "http://simple-tweet.dev/tweets"
		redirect_to timeline, notice: "Signed in!"
	end

	def signout
		session[:user_id] = nil
		reset_session
		#root_url = "http://simple-tweet.dev/tweets"
		redirect_to root_url, notice: "Signed in!"
	end


end
