


def dictionary
    hash = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4",
             "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end

def word_substituter(tweets)
    tweet_array = tweets.split(" ")
    arr = []
    tweet_array.each do |word|
        if word == "hello"
            arr.push("hi")
        elsif word == "to" || word == "two" || word == "too"
            arr.push("2")
        elsif word == "for" || word == "four" || word == "For"
            arr.push("4")
        elsif word == "be"
            arr.push("b")
        elsif word == "you"
            arr.push("u")
        elsif word == "at"
            arr.push("@")
        elsif word == "and"
            arr.push("&")
        else
            arr.push(word)
        end
    end
    new_tweet = arr.join(" ")
    puts new_tweet 
    new_tweet
end

def bulk_tweet_shortener(array)
    array.each do |string|
        word_substituter(string)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end

end


def shortened_tweet_truncator(tweet)
       new_tweet = word_substituter(tweet)
        if new_tweet.length > 140
            new_tweet[0..136] + "..."
    else
        tweet
    end

end