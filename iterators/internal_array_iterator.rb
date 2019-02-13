class InternalArrayIterator
   attr_reader :array

  def initialize(array)
    @array = array
  end

  def perform
    for_each_element(array) { |element| puts "The element is #{element}"}
  end

  def for_each_element(array)
    i = 0
    while i < array.length
      yield(array[i])
      i += 1
    end
  end
end

#EXAMPLE
arr = %w( senin selasa rabu kamis jumat sabtu minggu )
i   = InternalArrayIterator.new(arr)
i.perform
