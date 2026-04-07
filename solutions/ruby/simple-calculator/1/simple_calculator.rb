class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      raise ArgumentError.new("Operands must be integers")
    end
    begin
      if operation == '+'
        result = first_operand + second_operand
      elsif operation == '*'
        result = first_operand * second_operand
      elsif operation == '/'
        raise ArgumentError.new("Division by zero is not allowed.") if second_operand == 0
        result = first_operand / second_operand
      else
        raise UnsupportedOperation.new
      end
    rescue ArgumentError => e
      return e.message
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end