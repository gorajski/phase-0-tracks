class TodoList
  def initialize(arr)
    @items = arr
  end
  def get_items
    @items
  end
  def add_item(m)
    @items << m
  end
 def delete_item(d)
   @items.delete(d)
 end
 def get_item(i)
   @items[i]
 end
end