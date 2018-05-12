require 'test/unit'
require_relative 'ex3'

using RubyKansai

class TestCambridge < Test::Unit::TestCase
  def test_empty
    assert_equal("", "".cambridge)
  end

  def test_once
    assert_equal("1", "1".cambridge)
  end

  def test_twice
    assert_equal("12", "12".cambridge)
  end

  def test_thrice
    assert_equal("123", "123".cambridge)
  end

  def test_even
    assert_equal("021435", "012345".cambridge)
  end

  def test_odd
    assert_equal("02134", "01234".cambridge)
  end
end
