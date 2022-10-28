require 'spec_helper'

describe Assetable::Asset, type: :model do

  it { should have_many(:asset_attachments) }
  xit { should have_many(:assetable).through(:asset_attachments) }

  context "that is saved" do
    before :each do
      @asset = FactoryBot.create(:image)
    end

    it "should have a type" do
      expect(@asset.type).to_not be_nil
    end

    it "should have a content type" do
      expect(@asset.content_type).to_not be_nil
    end

    context "that is an image" do

      it "should have a ratio" do
        expect(@asset.ratio).to_not be_nil
      end

      it "should have a properly calculated ratio" do
        expect(@asset.ratio).to be_within(0.00001).of(1.33333)
      end
    end
  end
end