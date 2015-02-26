require "pry-byebug"

class Array

  def bindex element, lower = 0, upper = length - 1
    while upper >= lower
      binding.pry
      mid = (upper + lower) / 2
      if self[mid] < element
        lower = mid + 1
      elsif self[mid] > element
        upper = mid - 1
      else
        return mid
      end
    end

    return nil
  end
end

p [1,3,6,7,9,15,22,600].bindex(3)
