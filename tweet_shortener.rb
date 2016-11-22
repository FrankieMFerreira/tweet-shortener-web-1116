# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)

tweet = tweet.split(" ")
tweetwords = []

tweet.each do |word|
  if dictionary.keys.include?(word.downcase)
    tweetwords << dictionary[word.downcase]
  else
    tweetwords << word
  end
end
tweetwords.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return "#{tweet[0..136]}..."
  else
    return tweet
  end
end  
