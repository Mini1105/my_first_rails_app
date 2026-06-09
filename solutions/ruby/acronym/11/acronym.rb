module Acronym

    RE = REGULAR_EXPRESSION = {
    line_of_digits: /
                      [A-Za-z]+       # Match one or more letter
                      (?:'[A-Za-z]+)? # Optional apostrophe followed by
                                      # one or more letters
      /x
  }

  private_constant :RE

  def self.abbreviate(phrase)
    phrase
      .scan(RE[:line_of_digits])
      .map(&:chr).tap { |c| p c }
      .join
      .upcase
  end

end
