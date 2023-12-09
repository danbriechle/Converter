# frozen_string_literal: true

class Converter
  LIB = { feet: { inches: 0.0833333, feet: 1 },
          inches: { feet: 12, inches: 1 } }.freeze

  def initialize(from_unit, to_unit, amount)
    @from_unit = from_unit.to_sym
    @to_unit = to_unit.to_sym
    @amount = amount
  end

  def convert
    (LIB[@to_unit][@from_unit] * @amount).to_f.round(2)
  rescue NoMethodError
    "Cannot convert #{@amount} #{@from_unit} to #{@to_unit}"
  end
end
