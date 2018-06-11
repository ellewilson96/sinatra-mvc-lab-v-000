class PigLatinizer
  attr_reader :user_phrase

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def piglatinize(sentence)
    sentence.split(" ").map do |word|
      word = word.gsub("qu", " ")
      word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      word = word.gsub(" ", "qu")
  end
end
end
