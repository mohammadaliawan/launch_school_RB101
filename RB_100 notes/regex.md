# Regular Expressions

## What is a regular expression?

A sequence of characters that form rules for pattern matching.

Applied to a string to look for matches.

## What are different ways that regex are used for?

- Check if a pattern appears in a string.
- Find and replace characters in a string.
- Starts with?
- Ends With?

## How are regex created?

/any characters you would like to match with the string/

e.g. /b/ means has a b?
     /w/ means has a w?

## How can regex be used to check if we have a match in some string?

=~ means 'has a match in'

regex =~ string => index of the first match OR nil if no match

read as 'has a match in'

regex.match(string) => MatchData Object that describes the match OR
                        nil if no match found.