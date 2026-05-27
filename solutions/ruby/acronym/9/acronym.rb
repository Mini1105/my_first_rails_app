module Acronym
  RE = REGULAR_EXPRESSION = {
  line_of_digits: /[A-Za-z]+(?:'[A-Za-z]+)?/
}
 
private_constant :RE
  
  def self.abbreviate(phrase)
    phrase
      .scan(RE[:line_of_digits])
      .map(&:chr)
      .join
      .upcase
  end
end
