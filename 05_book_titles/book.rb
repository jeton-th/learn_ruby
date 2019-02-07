class Book
  attr_accessor :title

  def title
    prepositions = ["a", "an", "and", "in", "the", "of"]
    @title.split.map.with_index { |word, i|
      if prepositions.include?(word) && i != 0
        word
      else
        word.capitalize
      end
    }.join(" ")
  end
end
