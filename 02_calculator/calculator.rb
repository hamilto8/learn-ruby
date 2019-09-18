#write your code here
def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr)
    return arr.reduce(0) {|sum,num| sum+num}
end

def multiply(*args)
   product = args[0]
   i = 1
   while(i < args.length) do
    product *= args[i]
    i += 1
   end
   return product
end

def power(num, power)
    i = 0
    arr = []
    while(i < power) do 
        arr << num
        i += 1
    end
    product = arr[0]
    i = 1
    while(i < arr.length) do 
        product *= arr[i]
        i += 1
    end
    return product
end

def factorial(num)
    product = 0
    arr = []
    if(num == 0 or num == 1)
        product = 1
    else
        while(num > 0) do 
            arr << num 
            num -= 1
        end 
        product = arr[0]
        i = 1
        while(i < arr.length) do 
            product *= arr[i]
            i += 1
        end
    end
    return product
end