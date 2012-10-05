class TweetsController < ApplicationController

	def tweet
		if params[:tweet]
			Twitter.update(params[:tweet])
		end
	end
end

