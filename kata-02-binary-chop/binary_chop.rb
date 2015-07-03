
class BinaryChop

  # Solution 1 - Iterative
  def self.chop1(int, array_of_int)
    return -1 if array_of_int.size < 1

    found_index = -1
    array_of_int.each_with_index do |item, index|
      if item == int
        found_index = index
        break
      end
    end

    return found_index
  end # Solution 1

  # Solution 2 - Recursive
  def self.chop(int, array_of_int)
    # Easy checks up front
    return -1 if array_of_int.size < 1

    mid = array_of_int.size / 2

    # Found it
    if array_of_int[mid] == int
      return overall_index_of_start + mid

    # Check higher numbers in array
    elsif array_of_int[mid] < int
      new_array = array_of_int.slice(mid, array_of_int.size - 1)
      recursize_chop(
        int,
        new_array,
        overall_index_of_start + mid)

    # Check lower numbers in array
    elsif array_of_int[mid] > int
      new_array = array_of_int.slice(0, mid)
      recursize_chop(
        int,
        new_array,
        overall_index_of_start
      )

    else
      return -1
    end
  end

end
