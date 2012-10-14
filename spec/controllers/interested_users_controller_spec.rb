require 'spec_helper'

describe InterestedUsersController do
  
  it "should save the email for a interested user" do
    expect{
      post :create, interested_user: {email: "jhon@fake.com"}
    }.to change(InterestedUser, :count).by(1)
  end

end
