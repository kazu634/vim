#!/usr/bin/env ruby
#encoding: UTF-8

require 'minitest/unit'

class TestFoo < MiniTest::Unit::TestCase
  def setup
    @foo = Foo.new
  end

  def teardown
    @foo = nil
  end

  def test_foo
    assert_equal "foo",  @foo.foo
  end
end

