require './lib/bing_search'

RSpec.describe "Bing Search" do
  context "#search_bing" do
    before {@response = search_bing "The Odin Project"}
    it "got OK response" do
      expect(@response.code).to eql 200
    end
    it "response is a HTML document" do
      expect(@response.body.start_with? "<!DOCTYPE html>").to eql true
    end
  end
end