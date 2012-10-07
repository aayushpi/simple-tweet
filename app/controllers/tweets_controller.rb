class TweetsController < ApplicationController

	def tweet
		if params[:tweet]
			Twitter.update(params[:tweet])
		end
	end

	def timeline
		@listing = Twitter.home_timeline({:count =>100})
	end
end

