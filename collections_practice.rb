def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a, b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a, b| a.length <=> b.length }
end

def swap_elements(array)
  array << array.slice!(-2)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.map do |element|
    element.gsub(element[2], "$")
  end
end

def find_a(array)
  array.filter do |element|
    element.start_with?('a')
  end
end

def sum_array(array)
  numbers = array.filter do |element|
    element.integer?
  end
  numbers.inject { |sum, num| sum + num }
end

def add_s(array)
  array.map.with_index do |item, i|
    if i != 1
      item << "s"
    else
      item
    end
  end
end