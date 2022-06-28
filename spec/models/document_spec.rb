require 'spec_helper'

describe Document do

  context "when saved" do
    before :each do
      @document = FactoryBot.build(:document)
    end

    it "should have a filename" do
      expect(@document.filename).to_not be_nil
    end
  end

end