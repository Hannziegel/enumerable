require_relative 'my_enumerable.rb'

class MyList
  include MyEnumerable
  @list = []

  def initialize(*elements)
    @list = elements
  end
end

list = MyList.new(1, 2, 3, 4) #<MyList: @list=[1, 2, 3, 4]>

puts list.all? {|e| e < 5} # true
puts list.all? {|e| e > 5} # false

puts list.any? {|e| e == 2} #true
puts list.any? {|e| e == 5} # false

puts print list.filter {|e| e.even?} # [2, 4]
print list.filter {|e| e.odd?} # [1, 3]
