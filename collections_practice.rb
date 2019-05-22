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
  array.length.times do |i|
    if !array[i].include?("")  
      array.delete_at(i)
    end
  end
  array
end

# expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])

def count_elements(array)
  result = []
  array.length.times do |i|
    result.each do |element|
      if element[:name]
        element[:count] += 1 
      else 
        result.push(array[i])
        element[:count] = 1 
      end
    end
  end
  result
end
    
  