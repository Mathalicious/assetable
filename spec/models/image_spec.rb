require 'spec_helper'

describe Image do

  context "when saved" do
    before :each do
      @image = FactoryBot.build(:image)
    end

    it "should have a filename" do
      expect(@image.filename).to_not be_nil
    end
  end

end