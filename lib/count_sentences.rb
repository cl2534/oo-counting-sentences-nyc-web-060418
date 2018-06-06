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
    # self.split.delete_if {|i|
    #   i == "!" || i == "." || i == ","
    #   }.count 
    self.split.gsub(/[^A-Za-z0-9\s]/i, '').count 
  end
end