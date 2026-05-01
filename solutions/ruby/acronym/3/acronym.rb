class Acronym
  def self.abbreviate(phrase)
    phrase
      .scan(/(?:^|[^A-Za-z0-9'])([A-Za-z0-9])/).flatten
      .map { |word| word[0] }
      .join
      .upcase
  end
end
