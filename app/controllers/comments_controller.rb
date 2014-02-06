class CommentsController < ApplicationController

  def create
    id = params[:market_id]
    @market = Market.find(id)
    @user_who_commented = current_user
    if current_user == nil
    	flash[:error] = "Please sign in to add a comment."
    	redirect_to show_path(@market.id)
	else @comment = Comment.build_from(@market, @user_who_commented.id, params[:comment][:body])
    	@user_who_commented.name
    	@comment.save
    	redirect_to :controller => 'markets', :action => 'show', :id => params[:market_id]
    end
  end

end
