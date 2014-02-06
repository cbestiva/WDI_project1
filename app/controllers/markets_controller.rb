class MarketsController < ApplicationController

	def index
		@markets = Market.all
		gon.locations = @markets
		render :index
	end

	def all_markets
		@markets = Market.all
	end

	def show
		@market = Market.find(params[:id])
    	@comment = @market.comments.new
	end


end
