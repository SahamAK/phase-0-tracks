# Name: Saham Khozestani
# Name: David Keller
# We will be creating a method that allows us to search for the index of "data" within a given array.

def arr_search(arr, num)
	index = 0
	arr.each do |search|
		if (index < arr.length && search == num)
		  puts index
		end  
		index += 1
	end 
end


array = [1, 2, 3, 4, 5]
#p "The array is: #{array}"
arr_search(array, 3)
puts " "

# We are creating a new method that would dupllicate the Fib sequence. We will use a while loop. 

def fib_method(n)
	fib_array = []
	i = 0
		while i < n do
			if i == 0 || i == 1
			fib_array.push(i)
			else
			fib_array.push(fib_array[i-2] + fib_array[i-1])
		  end
		i +=1 
	end 
	fib_array
end 

p "fib_method flr 100 = #{fib_method(100)}"