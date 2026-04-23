class Acronym
  def self.abbreviate(phrase)
    phrase
      .split(/ |-|_/)
      .map { |word| word[0] }
      .join
      .upcase
  end
end