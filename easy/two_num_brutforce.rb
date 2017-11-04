nums = eval(ARGV[0])
target = ARGV[1].to_i

return unless nums.is_a?(Array) or target > 0

class TwoNum
  class << self
    def do(nums, target)
      indeces = [nil, nil]
      nums.each.with_index do |val, index|
        indeces[0] = index
        leftover = target - val
        second_index = nums.find_index(leftover)
        if second_index and second_index != index
          indeces[1] = second_index and break
        else
          next
        end
      end
      indeces
    end
  end  
end

puts TwoNum.do(nums, target).inspect