require 'spec_helper'

describe InterestedUser, "Validations" do
  it { should validate_presence_of(:email) }
end
