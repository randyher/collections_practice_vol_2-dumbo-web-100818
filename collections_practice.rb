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

def merge_data(keys, data)
  output=[]
  keys.each do |elem|
    names_key=elem[:first_name]
      data.each do |people|
        people.each do |name, info|
          if names_key==name
            hash={elem.key(names_key) => names_key}
            output.push(hash.merge(info))
          end
        end
      end
    
  end
  output
end

def find_cool(arr)
  output=[]
  arr.each do |elem|
    elem.each do |keys, data|
      if data=="cool"
        output.push(elem)
        end
    end
  end
  output
end
