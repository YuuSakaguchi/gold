
#instancemethod,classmethod
class Greeting
  def hello
    puts "hello"
  end
  
  def self.helloplus
    puts "hello hello"
  end
  
end

Greeting.helloplus

greet = Greeting.new
greet.hello

#inheritance
class Parent
  def greet
    puts "hi"
  end
end

class Child < Parent
  def greet(name)
    puts name
  end
end

p Child.superclass
child = Child.new
#child.greet

child.greet("say hello")

#singleton_method
class Foo
end

foo = Foo.new
bar = Foo.new

def bar.singleton_method
  puts "bar"
end
bar.singleton_method
#foo.singleton_method

module A
end

module B
  include A
end

class C
  #include A
  include B
end

p C.ancestors

class D
  prepend A
end

class E 
  include A
end

p D.ancestors
p E.ancestors




