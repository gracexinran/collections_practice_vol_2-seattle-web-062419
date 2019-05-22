# your code goes here
def begins_with_r(array)
  array.each do |element|
    if !element.downcase.start_with?('r')
      return false
    end
  end
  return true
end

def contain_a(array)
  result = []
  array.each do |element|
    if element.downcase.include?('a')
      result << element
    end
  end
  result
end
