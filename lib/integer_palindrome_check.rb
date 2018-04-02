def is_palindrome(number)
  size_of_number = 1
  number_size = number
  number_for_comparing = number
  compared_number = 0

  if number == nil
    return false
  end
  if number < 0
    return false
  end

  while number_size > 9
    number_size/=10
    size_of_number*= 10
  end

  while number_for_comparing > 0
    compared_number += ((number_for_comparing%10)*size_of_number)
    number_for_comparing /= 10
    size_of_number /=10
  end

  if compared_number == number
    return  true
  else
    return false
  end

end
