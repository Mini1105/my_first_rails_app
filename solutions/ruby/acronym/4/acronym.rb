class Acronym
  def self.abbreviate(phrase)
    phrase
      .scan(/(?:^|[^A-Za-z0-9'])([A-Za-z0-9])/).flatten
      .join
      .upcase
  end
end
