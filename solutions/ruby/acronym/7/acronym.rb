module Acronym
  REGSEARCH = (/(?:^|[^A-Za-z'])([A-Za-z])/)
  def self.abbreviate(phrase)
    phrase
      .scan(REGSEARCH).flatten
      .join
      .upcase
  end
end
