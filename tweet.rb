require "twitter"
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "tQehSpwXzlcDE5Xb94jSXw"
  config.consumer_secret     = "APWFWWahluJP1oPxrAqI7JJBoG1VqUNs63gYow047D8"
  config.access_token        = "32943307-P2vm2zfdnRI6TIRV3bD1VMy2RAs00zbfF33E91yfe"
  config.access_token_secret = "YjW5rcNqvEIZgD5ayUqYuU9ToY49M0qJYcKtbbNck"
end

# client.user do |object|
#   case object
#   when Twitter::Tweet
#     puts "It's a tweet!"
#   when Twitter::DirectMessage
#     puts "It's a direct message!"
#   when Twitter::Streaming::StallWarning
#     warn "Falling behind!"
#   end
# end

client.user_timeline.each do |tweet|
  puts tweet.text
end