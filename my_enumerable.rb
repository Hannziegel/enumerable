module MyEnumerable
  def all?
    check = true
    @list.each do |element|
      if (yield element) == false
        check = false
        break
      end
    end
    return check
  end
  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end
  def filter
    newArray = []
    @list.each do |element|
      newArray.push(element) if yield element
    end
    newArray
  end
end