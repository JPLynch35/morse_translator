require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def setup
    @translator = Translator.new
  end

  def test_eng_to_morse
    assert_output(/......-...-..--- .-----.-..-..-../) {@translator.eng_to_morse("Hello World")}
  end



end
