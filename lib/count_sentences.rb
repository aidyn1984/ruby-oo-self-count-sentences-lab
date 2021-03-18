

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
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end

# "This is a string! It has three sentences. Right?".count_sentences
# "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences

# binding.pry