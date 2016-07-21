require 'rspec/autorun'

class Queue
  def initialize(tab)
    $table=tab
  end

  def push(object)
    $table.push(object)
  end

  def pop
    $table.delete($table[0])
  end

  def size
    $table.size
  end
  def to_s
   $table
  end
end

describe Queue do
  describe "#push" do
    it "dodaje element na koniec kolejki" do
      obj=Queue.new([])
      obj.push(5)
      expect(obj.to_s).to eq([5])
      obj.push(4)
      obj.push(1233)
      expect(obj.to_s).to eq([5,4,1233])
    end
  end
  describe "#pop" do
    it "usuwa pierwszy element z kolejki" do
      obj=Queue.new([2])
      obj.push(54)
      obj.pop
      expect(obj.to_s).to eq([54])
    end
  end
  describe "#size" do
    it "podaje rozmiar kolejki" do
      obj=Queue.new([2])
      obj.push(54)
      expect(obj.size).to eq(2)
      obj.push(8475)
      expect(obj.size).to eq(3)
      obj.pop
      expect(obj.size).to eq(2)
    end
  end
end
