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
    self.split each do |i|
      i.delete_if {|i|
      i == "!" || i == "." || i == ","
      }
    end 
  end
end