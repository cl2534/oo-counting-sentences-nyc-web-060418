require 'pry'

class String

  def sentence?
    self.end_with?(".")    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    p self.split(%r{,\s*})
    p self.gsub(/[^a-zA-Z,.]/, " ").split(". ")
  end 
end