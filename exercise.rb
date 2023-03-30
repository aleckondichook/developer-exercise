class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    wordSequence = str.split(" ")
    length = wordSequence.length() - 1
    for i in 0..length
      if wordSequence[i].length > 4
        if wordSequence[i][0] == wordSequence[i][0].capitalize
          if wordSequence[i][wordSequence[i].length() - 1] == "." or wordSequence[i][wordSequence[i].length() - 1] == "?"
            wordSequence[i] = "Marklar" + wordSequence[i][wordSequence[i].length() - 1]
          else
            wordSequence[i] = "Marklar" 
          end
        else
          if wordSequence[i][wordSequence[i].length() - 1] == "." or wordSequence[i][wordSequence[i].length() - 1] == "?"
            wordSequence[i] = "marklar" + wordSequence[i][wordSequence[i].length() - 1]
          else
            wordSequence[i] = "marklar" 
          end
        end
      end
    end
    return wordSequence.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    num_array = []
    total = 0
    for i in 1..nth
      num_array << fibonacci(i)
    end
    for i in 0..num_array.length() - 1
      if num_array[i] % 2 == 0
        total += num_array[i]
      end
    end
    return total
  end

  def self.fibonacci(n)
    if n < 2
      return n
    else
      return fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
  
end


# Exercise.marklar("How is the weather today? I have not been outside.")
# Exercise.even_fibonacci(6)