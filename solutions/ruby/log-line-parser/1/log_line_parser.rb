class LogLineParser
  def initialize(line)
    @line = line
    @len = line.length
  end

  def message
    @line.slice(@line.index(" "), @line.length).strip
  end

  def log_level
    @line.slice(1, @line.index("]")-1).downcase
  end

  def reformat
    message + " (" + log_level + ")"
  end
end

LogLineParser.new('[ERROR]: Invalid operation').message