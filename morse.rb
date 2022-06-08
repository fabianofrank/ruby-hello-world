def decode_char(char)
  alphabeat = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g',
                '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n',
                '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u',
                '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', '--..' => 'z' }
  alphabeat[char].capitalize
end

# decode_char('.-')

def decode_word(word)
  split_letter = word.split
  decode_letter = ''

  split_letter.each do |char|
    decode_letter += decode_char(char)
  end

  decode_letter
end

# decode_word('-... --- -..-')

def decode_phrase(phrase)
  split_word = phrase.split('   ')
  decode_sentence = ''

  split_word.each do |word|
    decode_sentence += "#{decode_word(word)} "
  end

  decode_sentence
end

puts decode_phrase('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
