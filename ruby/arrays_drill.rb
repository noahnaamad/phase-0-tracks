def buildArray(a,b,c)
 e = []
 e << a 
 e << b
 e << c
end

def addItemArray (a, b)
	a << b
end

x = []
p x
x << 1
x << 2
x << 3
x << 4
x << 5
p x
x.delete_at(2)
p x 
x.insert(2,3.0)
p x 
x.delete(1)
p x
y = x.include?(3.0) 
if y == true
 puts "it includes this object."
else 
 puts "it does not include this object."
end
z = ["blue", "red", "grey", "maroon"]
aa = z + x
p aa

buildArray(1,2,3)