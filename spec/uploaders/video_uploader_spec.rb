# describe VideoUploader do

#   context 'an image uploader' do
#     before :all do
#       @uploader = VideoUploader.new
#     end

#     it 'should upload the image' do
#       result = @uploader.store!(File.open(File.expand_path("spec/files/test.jpg")))
#       expect(result).to_not be_nil
#     end
    
#     it 'should create a version of the image for each version of the file' do
#       @uploader.store!(File.open(File.expand_path("spec/files/test.jpg")))
#       expect(@uploader.versions.length).to eq(ImageUploader.versions.keys.length)
#     end
#   end

# end