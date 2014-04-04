
@client = Tweet.initialize_streaming_twitter_client


topics = ["coffee", "tea"]
@client.filter(:track => topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
