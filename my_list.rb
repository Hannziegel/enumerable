require_relative 'my_enumerable.rb'

class MyList
  include MyEnumerable
end

list = MyList.new

list.all