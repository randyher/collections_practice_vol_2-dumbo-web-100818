# your code goes here

def begins_with_r(arr)
  arr.each do |elem|
    if (elem[0]!="r")
      return false 
    end 
  end
    
    return true 
end

def contain_a (arr)
  arr.map do |elem|
    if (elem.include?("a"))
      elem
    end
  end.compact
end 

def first_wa (arr)
  arr.each do |elem|
    if (elem.to_s.start_with?("wa"))
      return elem 
    end 
  end 
end 

def remove_non_strings (arr)
  arr.map do |elem|
    if (elem.class==String)
      elem 
    end 
  end.compact
end 

def count_elements (arr)
  output=[]
  count=Hash.new 0
  arr.each do |elems|
    elems.each do |key, name|
      count[name]+=1
    end
  end
  count.each do |name, number|
    output.push(:name => name, :count => number)
  end
  output
end 
