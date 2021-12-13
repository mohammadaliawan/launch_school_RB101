=begin

Background
There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation


for reference: http://en.wikipedia.org/wiki/Typoglycemia


p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramle_words('y-u') == 'y-u'


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('dcba.') == 'dbca.'


p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramle_words('y-ou') == 'y-ou'

p scramble_words('-dcba') == '-dbca'

p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."


# Problem:

Input: a string of words/word
Output: a string of word/words

Rules:

Explicit:
- first and last chars remain in same position for each word
- in between chars to be sorted alphabatically
- special chars/punctuation remain at the same positions

Assumptions:
- Words are separated by single spaces
- spaces seperate words, not special chars
- special chars if at the start or the end word are not considered part of the word, word start with letter only, -dcba -> -dbca
- hyphen(-), apostrophe('), comma(,) and period(.)
- treat uppercase letters the same as lowercase

Implicit Rules:
- If the word.length <= 3, return the word as it is
- So if there is just one word in the string, first and last chars remain the same position, sort the inbetween chars
- for each word with a special char, the first and the last remain atthe same position, spcial char also remains at the same position, rest of the chars around the speical char are sorted.

- If string contains multiple words, then consider each word seperately, run each word through the scrambling process above.


DS: input: a string
Output: a string
Intermediate: an array

Examples and Test cases:

p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramle_words('y-u') == 'y-u'


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('dcba.') == 'dbca.'


p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramle_words('y-ou') == 'y-ou'

p scramble_words('-dcba') == '-dbca'

p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

Algo:

Given a string of words seperated by spaces

- seperate the string of words into an array of word strings (words_array)

- subprocess_1: if word contains chars <= 3
    return the word as it is
- subprocess_2: if word contains no special chars
    - save the first and the last chars in variables
    - get the substring of inbetween chars
    - sort the inbetween chars
    - concatenate the chars first + sorted_inbetween_chars + last
- subprocess_3: if word contains special chars iin between (special_inbetween_chars)
    - if special?(word)
        word.index(special?(word))
        
- subprocess_4: if word starts or ends with a special char. 
  - if start with a speical char
      - save the special char = word[0]
      - delete the special character from the word (clean_word)
      - subprocess_2(clean_word) --> a scrambled_clean_word without the special char
      - insert the special_char at the start
  - else
    - save the special char = word[-1]
      - delete the special character from the word (clean_word)
      - subprocess_2(clean_word) --> a scrambled_clean_word without the special char
      - insert the special_char at the end


=end

def special?(chr)
  /[-',.]/.match(chr)
end

def scrambled_simple(word)
  first_char = word[0]
  last_char = word[-1]
  
  inbetween_chars = word[1..-2]
  
  sorted_inbetween_chars = inbetween_chars.chars.sort.join
  
  first_char + sorted_inbetween_chars + last_char
end

def start_end_special_char(word)
  if special?(word[0])
    word[0] + start_end_special_char(word[1..-1])
  elsif special?(word[-1])
    start_end_special_char(word[0..-2]) + word[-1]
  else
    scrambled_simple(word)
  end
end
  

p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramle_words('y-u') == 'y-u'


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('dcba.') == 'dbca.'


p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramle_words('y-ou') == 'y-ou'

p scramble_words('-dcba') == '-dbca'

p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
