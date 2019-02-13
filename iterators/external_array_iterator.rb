class ExternalArrayIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next?
    @index < @array.size
  end

  def has_previous?
    @index > 0
  end

  def item
    @array[@index]
  end

  def next_item
    value = @array[@index]
    @index += 1
    value
  end

  def previous_item
    value = item
    @index -= 1
    value
  end
end

arr = %w( senin selasa rabu kamis jumat sabtu minggu )
i = ExternalArrayIterator.new(arr)
p i.item
i.next_item
p i.item
i.previous_item
p i.item
