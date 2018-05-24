require "minitest/autorun"
require "proxy-instagram-scraper"

describe ProxyInstagramScraper do

  describe "when search" do
    it "users must be an array" do
      ProxyInstagramScraper.search( "borodanov" )["users"].must_be_instance_of Array
    end
  end

  

end