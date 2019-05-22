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

def first_wa(array)
  array.each do |element|
    if element.to_s.include?('wa')
      return element
    end
  end
end

def remove_non_strings(array)
  result = []
  array.length.times do |i|
    if array[i].to_s == array[i]
      result << array[i]
    end
  end
  result
end

# expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])

def count_elements(array)
  result = [array[0]]
  array.length.times do |i|
    result[1..result.length-1].each do |element|
      if element[:name] == array[i][:name]
        element[:count] += 1 
      else 
        result.push(array[i])
        result[result.index(array[i])][:count] = 1 
      end
    end
  end
  result
end
    
  