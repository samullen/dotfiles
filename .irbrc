class Object
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end

  def unique_methods
    ancestors = self.class.ancestors - [self.class]
    (self.methods - ancestors.map(&:instance_methods).flatten).sort
  end
end

class Array
  def self.test_list(x=10)
    (1..x).to_a
  end
end
class Hash
  def self.test_list
    Array(:a..:z).each_with_object({}) {|x,h| h[x] = rand(100) }
  end

  def slice(*list)
    self.select {|key| list.flatten.include?(key)}
  end
end

def clear
  system 'clear'
end
