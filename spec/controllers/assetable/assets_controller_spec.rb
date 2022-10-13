require 'spec_helper'

describe Assetable::AssetsController, type: :controller do

  render_views
  routes { Assetable::Engine.routes }

  describe "POST #create" do
    context "JS" do
      it "should respond with JS" do
        @image = FactoryBot.attributes_for(:image_web)
        post :create, params: @image, xhr: true
        expect(response).to be_successful
      end

      context "uploading a document" do
        before :each do
          @document = FactoryBot.attributes_for(:document_web)
        end
        
        it "should respond with success" do
          post :create, params: @document, xhr: true
          expect(response).to be_successful
        end
      end
    end
  end
end