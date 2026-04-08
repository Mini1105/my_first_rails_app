class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)

    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    return "Division by zero is not allowed." if operation == "/" && second_operand == 0
    
    result = first_operand.public_send(operation, second_operand)
    
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end