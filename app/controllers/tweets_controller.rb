class TweetsController < ApplicationController

	def index
		if params[:tweet]
			Twitter.update(params[:tweet])
		end
	end
end

