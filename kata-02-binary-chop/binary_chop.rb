
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
    return recursize_chop(int, array_of_int, 0)

  end # Solution 2

  private

  def self.recursize_chop(int, array_of_int, overall_index_of_start)
    # Easy checks up front
    return -1 if array_of_int.size < 1

    mid = array_of_int.size / 2
    #puts "\nMid index (value): #{mid} (#{array_of_int[mid]})"

    if array_of_int[mid] == int
      #puts "I found you!"
      return overall_index_of_start + mid

    elsif array_of_int[mid] < int
      #puts "Gotta go check with the big dogs"
      new_array = array_of_int.slice(mid, array_of_int.size - 1)
      #puts "Mid (#{array_of_int[mid]}) larger than given number (#{int}) -- New array: #{new_array}"
      recursize_chop(
        int,
        new_array,
        overall_index_of_start + mid)

    elsif array_of_int[mid] > int
      #puts "Gotta scale down and try again"
      new_array = array_of_int.slice(0, mid)
      #new_array = [] if new_array.nil? # If no items left in the array, return empty array
      #puts "Mid (#{array_of_int[mid]}) smaller than given number (#{int}) -- New array: #{new_array}"
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
