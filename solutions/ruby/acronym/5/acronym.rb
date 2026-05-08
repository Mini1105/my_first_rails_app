module Acronym
  REGSEARCH = (/(?:^|[^A-Za-z0-9'])([A-Za-z0-9])/)
  def self.abbreviate(phrase)
    phrase
      .scan(REGSEARCH).flatten
      .join
      .upcase
  end
end
