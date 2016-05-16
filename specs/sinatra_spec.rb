require( "minitest/autorun" )
require( 'minitest/rg' )
require_relative( '../models/word_formatter.rb' )
require( 'pry-byebug')

class TestWordFormatter < MiniTest::Test

  def setup
    @test = WordFormatter.new("e13 zqf")
    @test1 = WordFormatter.new("code clan")
  end

  def test_postcode_formater

    assert_equal("E13 ZQF", @test.postcode_formatter)
  end

  def test_camelcase
    test = @test1.camelcase
    assert_equal("CodeClan", test)
  end
end