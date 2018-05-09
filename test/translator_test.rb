require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def setup
    @translator = Translator.new
  end

  def test_eng_to_morse
    assert_output(/......-...-..--- .-----.-..-..-../) {@translator.eng_to_morse("Hello World")}
    assert_output(/-......-.. .-.-.. ...-- ..........--..../) {@translator.eng_to_morse("There are 3 ships")}
  end

  def test_from_file
    assert_output(/.. .--- ..-. .- ..-....-.../) {@translator.from_file("input.txt")}
  end

  def test_morse_to_eng
    assert_output(/hello world/) {@translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")}
  end

end
