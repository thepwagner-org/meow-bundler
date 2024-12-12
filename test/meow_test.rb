# frozen_string_literal: true

require 'minitest/autorun'
require 'set'
require_relative '../lib/meow'

class MeowTest < Minitest::Test
  def test_valid_cat_sounds_return_true
    assert Meow.meow?('meow'), 'meow should be valid'
    assert Meow.meow?('MEOW'), 'MEOW should be valid'
    assert Meow.meow?('nyaa'), 'nyaa should be valid'
    assert Meow.meow?('miau'), 'miau should be valid'
  end

  def test_invalid_cat_sounds_return_false
    refute Meow.meow?('woof'), 'woof should be invalid'
    refute Meow.meow?('bark'), 'bark should be invalid'
    refute Meow.meow?('hello'), 'hello should be invalid'
  end

  def test_empty_or_invalid_inputs_return_false
    refute Meow.meow?(''), 'empty string should be invalid'
    refute Meow.meow?(' '), 'blank string should be invalid'
    refute Meow.meow?(nil), 'nil should be invalid'
  end
end
