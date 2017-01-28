require 'rails_helper'

RSpec.describe UserSearch, type: :model do
  context "valid factory" do
    it "has a valid factory" do
      expect(build(:user_search)).to be_valid
    end
  end

  context "validations" do
    context "presence" do
      it { should validate_presence_of :search_id }
    end
  end
end
