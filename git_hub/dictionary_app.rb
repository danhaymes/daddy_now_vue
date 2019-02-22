# # get dictionary API
# # make sure that works 
# # allow user to enter word 
# # output definitoin of user word 
# # output an example of user word 
# # output pronounciation of user word 

require 'http'

loop do 
 p "Please enter a word"
 word = gets.chomp


  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")

#p response

  user_word = response.parse

 
  definition = user_word[0]["text"]  
  example_uses = user_word[0]["partOfSpeech"]
  pronounciation = user_word[1]["attributionText"]
  p definition
  p example_uses
  p pronounciation
  word = gets.chomp
 end 