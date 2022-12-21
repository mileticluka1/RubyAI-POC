# Load the necessary libraries
require 'ai'

# Define a method to classify the sentiment of a sentence
def classify_sentiment(sentence)
  # Use the AI library to classify the sentiment of the sentence
  sentiment = AI.classify_sentiment(sentence)

  # Check the sentiment and return "negative" or "positive"
  if sentiment < 0
    return "negative"
  elsif sentiment > 0
    return "positive"
  else
    return "neutral"
  end
end

# Test the classify_sentiment method with some example sentences
sentences = [
  "I love programming!",
  "I hate broccoli!",
  "I don't know what to think about this."
]

sentences.each do |sentence|
  puts "#{sentence}: #{classify_sentiment(sentence)}"
end
