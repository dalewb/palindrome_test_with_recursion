def palindrome?(word)
  word.downcase == word.downcase.reverse
end

def recursive_palindrome?(word)
  return true if word.length < 2

  if word.class == String
    word = word.split('')
  end

  if word[0].downcase == word[-1].downcase
    word.pop
    word.shift
    recursive_palindrome?(word)
  else
    return false
  end

end

recursive_palindrome?('testing')
