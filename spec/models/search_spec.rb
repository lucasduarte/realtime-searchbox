require 'rails_helper'

RSpec.describe Search, type: :model do
  context "valid factory" do
    it "has a valid factory" do
      expect(build(:search)).to be_valid
    end
  end

  context "validations" do
    context "presence" do
      it { should validate_presence_of :search }
    end
  end

  describe "model methods" do
    before :each do
      @search = create(:search, search: "What is your name")
    end

    it "should get related searches" do
      expect(Search.related_searches("What is")).to eq [@search]
    end

    it "shold get search id by phrase" do
      expect(Search.get_by_prhase("What is your name")).to eq @search.id
    end
  end

  describe "searches" do
    before :each do
      @search1 = create(:search, search: "Where are you from")
      @search2 = create(:search, search: "What is your name")
    end

    context "search does not exists yet" do
      it "should create a new search record" do
        expect { create(:search, search: "Who are you") }.to change { Search.count }
      end
    end

    context "search already exists" do
      it "should not create a new search" do
        expect { create(:search, search: "Where are you from")}.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end

end
