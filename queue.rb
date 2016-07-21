class Queue
  def initialize
    $table=[]
  end

  def push(object)
    $table.push(object)
  end

  def pop
    $table.delete($table[0])
    print $table
  end

  def size
    $table.size
  end

end

obj=Queue.new
obj.push(3)
obj.push(2)
obj.push(57)
puts obj.size
obj.pop
puts obj.size
