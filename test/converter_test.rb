# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/converter'

class ConverterTest < Minitest::Test
  def test_it_exists
    assert_instance_of(Converter, Converter.new('feet', 'inches', 43))
  end

  def test_it_can_convert_feet_to_inches
    converter = Converter.new('feet', 'inches', 43)

    assert_equal(converter.convert, 516)
  end

  def test_it_can_convert_inches_to_feet
    converter = Converter.new('inches', 'feet', 43)

    assert_equal(converter.convert, 3.58)
  end

  ## sad path
  def test_it_cant_convert_feet_to_dolphins
    converter = Converter.new('feet', 'dolphins', 43)

    assert_equal(converter.convert, 'Cannot convert 43 feet to dolphins')
  end

  def test_it_can_convert_feet_to_feet
    converter = Converter.new('feet', 'feet', 43)

    assert_equal(converter.convert, 43)
  end
end
