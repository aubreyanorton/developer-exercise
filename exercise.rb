# Note to Brendon Rapp:
# Although normally I don't program in ruby I had fun doing this application. It was interesting to figure it out.
# I normally program in python and I've been teaching myself django and a little javascript. I normally work in a unix 
# environment (it's installed on my primary computer) and I know a bit about open source image editing using open source tools. 
# I'm a Santa Cruz local who has had three and a half years experience programming front end tests with selenium and I'm trying to 
# pivot to web development so I definitely know my way around a web console and I understand css and html. 
# Please let me know if you're interested because even if I'm not all the way there as a web programmer now, I will be, and I can do the work.

class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    listToReturn = []
    str.split().each do |i|
      if i.length() > 4
        if i.match?(/\A[A-Z]/)
          listToReturn.append(i.gsub( /(^[a-zA-Z]*)/ , "Marklar"))
        else
          listToReturn.append(i.gsub( /(^[a-zA-Z]*)/ , "marklar"))
        end
      else
        listToReturn.append(i)
      end
    end
    return listToReturn.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    first = 1
    second = 1
    evenSum = 0
    for _ in 1..nth do
      if first.even?
        evenSum = evenSum + first
      end
      temp = second
      second = first + second
      first = temp
    end
    return evenSum
  end
end


