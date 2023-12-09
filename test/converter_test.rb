# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/converter'

class ConverterTest < Minitest::Test
  def test_it_exists
    assert_instance_of(Converter, Converter.new)
  end
end
