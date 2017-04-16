require 'rails_helper'

RSpec.describe Question, type: :model do

  let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: false) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(question).to have_attributes(title: "New Post Title", body: "New Post Body", resolved: false)
    end

    it "should respond to title" do
      expect(question).to respond_to(:title)
    end

    it "should respond to body" do
      expect(question).to respond_to(:body)
    end

    it "should respond to boolean" do
      expect(question).to respond_to(:resolved)
    end
  end

end
