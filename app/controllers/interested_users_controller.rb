class InterestedUsersController < ApplicationController

  def new
    @interested_user = InterestedUser.new
  end
  
  def create
    @interested_user = InterestedUser.new(params[:interested_user])
    if @interested_user.save
      redirect_to new_interested_user_path
    else
      flash[:error] = @interested_user.errors.full_messages.to_sentence
      render :new
    end
  end

end
