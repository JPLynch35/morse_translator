class Translator

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(message)
    translated_to_morse = ""
    message.downcase.chars.each do |letter|
      letter_code = @dictionary[letter]
      translated_to_morse.concat(letter_code)
    end
    puts translated_to_morse
  end

  def from_file(file)
    File.open("./lib/"+file, "r").each_line do |line|
      eng_to_morse(line)
    end
  end

  def morse_to_eng(morse)
    translated_to_eng = ""
    morse.split(/\s/).map do |morse_word|
      translated_to_eng.concat(@dictionary.index(morse_word))
    end
    puts translated_to_eng
  end

end
