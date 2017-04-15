require 'rails_helper'

RSpec.describe Advertisement, type: :model do

  let(:ad) { Advertisement.create!(title: "New Post Title", body: "New Post Body", price: 1) }

  describe "attributes" do
    it "has title, body, and integer attributes" do
      expect(ad).to have_attributes(title: "New Post Title", body: "New Post Body", price: 1)
    end

    it "should respond to title" do
      expect(ad).to respond_to(:title)
    end

    it "should respond to body" do
      expect(ad).to respond_to(:body)
    end

    it "should respond to price" do
      expect(ad).to respond_to(:price)
    end
  end

end
