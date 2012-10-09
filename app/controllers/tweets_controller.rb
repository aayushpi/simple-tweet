class TweetsController < ApplicationController

	def newtweet
		if params[:tweet]
			Twitter.update(params[:tweet])
		end
	end

	def timeline
			@listing = Twitter.home_timeline({:count =>100})	
	end

	def mytweets
		@mytweets = Twitter.user_timeline({:count =>100})
	end

	def mentions
		@mentions = Twitter.mentions_timeline({:count =>100})
	end
end

