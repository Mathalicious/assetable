# This is just a test model. It exists in the dummy app

require 'spec_helper'

describe Post, type: :model do

  it { should have_one(:image_association) }
  it { should have_one(:image).through(:image_association) }
  
  context "That is created with an image" do
    before :each do
      @post = FactoryBot.build(:post)
    end

    it "should have an image" do
      expect(@post.image).to_not be_nil
      expect(@post.image).to be_valid
    end
  end

end
