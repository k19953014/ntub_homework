1.請讓以下程式碼可正常運作：

```
class Product
  attr_reader :title, :price
  def initialize(title, price)
    @title = title
    @price = price
  end
  def to_s  
    "title:#{title}, price:$#{price}"
  end
end

class Cart
  def initialize
    @items = []
  end
  def add_item(product)
    @items << product
  end
  def each
    @items.each {|t| yield t}
  end
  def select
    @items.select {|y| yield y.price}
  end
end

p1 = Product.new("ruby", 100)
p2 = Product.new("php", 200)
p3 = Product.new("javascript", 300)
p4 = Product.new("perl", 400)
p5 = Product.new("python", 600)

cart = Cart.new
cart.add_item(p1)
cart.add_item(p2)
cart.add_item(p3)
cart.add_item(p4)
cart.add_item(p5)

list = cart.select { |item| item <= 300 }
puts list

# 得到結果
# title: ruby, price: $100
# title: php, price: $200
# title: javascript, price: $300
```

2.請讓以下程式碼可正常運作：

```
class Fixnum
  def my_times
    a=1
    while a <= self
      yield a
      a+=1
    end
  end
end

5.my_times do |i|
puts "#{i} hello"
end

# 期望結果：
# 1 hello
# 2 hello
# 3 hello
# 4 hello
# 5 hello
```
