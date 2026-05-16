module Acronym
  RE = REGULAR_EXPRESSION = {
  words: /[A-Za-z]+(?:'[A-Za-z]+)?/
}

private_constant :RE
  
  def self.abbreviate(phrase)
    phrase
      .scan(RE[:words])
      .map(&:chr)
      .join
      .upcase
  end
end
