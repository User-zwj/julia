#println(), Using Printf, @printf, #index starts from 1
#function funname(x,y) end
#x::Int8
#parse(typeto,datafrom), push!(var,val), delete!(d1,key), splice!(var,idx,val)
#string(stra,strb), or, stra*strb
#"$var"
# println(findfirst(isequal('i'),"Keigo"))
# println(occursin("key","monkey"))
# if elseif elseif else end
# @printf("true || false = %s\n", true || false ? "true" : "false")
# while global i+=1 end
# for i=1:5 ... end / for i in 1:5 ... end
# findall(fun, var)    #fun returns true or false
# count(fun, var)
# a =[1 2 3; 4 5 6], b=[1,2], size(var), length(var), Array{Int32}(undef,5), zeros(Int32,2,3)
# splice!(a4,1,[1,2,3]) #replace
# collect(1:5); push!(var,10) #append
# tuple no size; t1=(1,2,3); t2=((1,2),(3,4)), t2[1][2]; t3=(sue=("Sue",100),paul=("Paul",23)), t3.sue
# d1=Dict("S1"=>["Jane",12,"F"],"S2"=>"Jack"), d1["S1"]; d2=Dict(:pi=>3.14,:e=>2.718), d2[:pi]
# keys(d1), values(d1), d1["S3"]="Andy", delete!(d1,"S1"), for (key,value) in d1 ... end
# st1 = Set(["Jim","Pam","Jim"]), union, intersect, setdiff
# function square(x) ... end; map((x,y) -> x+y, [1,2],[3,4])
# map(x->x*x,[1,2,3])
# longest = reduce((x,y) -> length(x) > length(y) ? x : y, sArray)
# println(longest)
# @enum Color begin .. end; struct stu name::type ... end
# struct.name; t3.sue
# chomp(readline())
# open("file.txt","w") do file ... end; read(file, String); write(file,"Content"); eachline(file)
# # macro doMore(n,exp)
#     quote
#         for i = 1:$(esc(n))
#             $(esc(exp))
#         end
#     end
# end





using Printf
using Statistics

##################
# s = 0
# s = "Dog"
# println(s)

##################
# Assert datatype
# function changeNum()
#     x::Int8 = 10
#     x = "Dog"
# end
#
# changeNum()

##################
#Int8, Int16, Int32, Int64
#Float32, Float64, UInit16, etc
# canDrive = true   #false

##################
#float accurate up to 14 digits
# bF = 1.111111111111111
# println(bF+0.111111111111111)
# BigFloat, BigInt can be used to increase precision


##################
# c1 = 'A' #character
# c2 = Char(120)
# println(c2)
# i1 = UInt8(trunc(3.14))
#
# f1 = parse(Float64, "1") #string to float
# println(f1)
#
# i2 = parse(Int8,"1") #string to int
# println(i2)


##################
# s1 = "Just some random words\n"
# println(length(s1))
# println(s1[1])
# println(s1[end])
# println(s1[1:4])
# s2 = string("hfe","jfye")
# println(s2)
# println("jfue"*"jfyej")
# i3 = 2
# i4= 3
# println("$i3 + $i4 = $(i3+i4)")


##################
#string
# s3 = """
# I
# have
# many
# lines
# """
# println("jfue" > "hfnek")
# println(findfirst(isequal('i'),"Keigo"))
# println(occursin("key","monkey"))

##################
#conditional
# age = 12
# if age >= 5 && age <=6
#     println("You are in Kindergarten")
# elseif age >=7 && age <= 13
#     println("You are in Middle school")
# elseif age >= 14 && age <= 18
#     println("You are in high school")
# else
#     println("Stay hOme")
# end
#
# @printf("true || false = %s\n", true || false ? "true" : "false")
# @printf("!true = %s \n", !true ? "true" : "false")


##################
# looping
# i = 1
# while i < 20
#     if (i%2) == 0
#         println(i)
#         global i += 1
#         continue
#     end
#     global i += 1
#     if i >= 10
#         break
#     end
# end
# print("List Iteration\n")
# l = ["geeks", "for", "geeks"]
# for i in l
#     println(i)
# end

# for i in 1:5
#     for j in 1:i
#         print(j, " ")
#     end
#     println()
# end

# for i = 1:5
#     for j = 1:i
#         print(j," ")
#     end
#     println()
# end

# for i = 1:5
#     println(i)
# end
# for i in [2,4,6]
#     println(i)
# end
#
# for i=1:5, j= 2:2:10
#     println((i,j))
# end


##################
# array
# a1 = zeros(Int32,2,2)
# a2 = Array{Int32}(undef,5)
# a3 = Float64[]
# a4 = [1,2,3]
# println(a4[1])
# println(a4[end])
# println(5 in a4)
# println(findfirst(isequal(2), a4))
# f(a) = (a >= 2) ? true : false
# println(findall(f,a4))
# println(count(f,a4))
# println(size(a4))
# println(length(a4))
# println(sum(a4))
# splice!(a4,2:1,[8,9]) #add
# println(a4)
# splice!(a4,2:3)  #remove
# println(a4)
# println(maximum(a4))
# println(minimum(a4))
# println(a4*2)
# println(a4)
# splice!(a4,1,[1,2,3])
# splice!(a4,2,[1,2,3])
# splice!(a4,1:2,[3,5,4])
# splice!(a4,2:3,[3,5,4])
# println(a4)
# a5 = [1, 3.14, "Hello"]
# a6 = [sin, cos, tan] #store func
# for n in a6
#     println(n(0))
# end
# a7 =  [1 2 3; 4 5 6]
# for n = 1:2, m = 1:3
#     @printf("%d ", a7[n,m])
# end
# println()
# println(a7[:,2])
# println(a7[2,:])
# a8 = collect(1:5)
# a9 = collect(2:2:10)   #(4:-1:1)
# for n in a9 println(n) end
# a10 = [n^2 for n in 1:5]
# println(a10)
# push!(a10, 36) #append
# println(a10)
# a11 = [n*m for n in 1:5, m in 1:5]
# println(a11)
# a12 = rand(0:9, 5, 5)
# for n = 1:5
#     for m = 1:5
#         print(a12[n,m])
#     end
#     println()
# end


##################
#tuple, immutable
# t1 = (1,2,3,4,5)
# println(t1)
# println(t1[1])
# for i in t1
#     println(i)
# end
# t2 = ((1,2),(3,4))
# println(t2[1][1])
# t3 = (sue=("Sue",100),paul=("Paul",23))
# println(t3.sue)


##################
# dictionary
# d1 = Dict("pi"=>3.14, "e"=>2.718)
# println(d1["pi"])
# d1["golden"] = 1.618
# delete!(d1,"pi")
# println(haskey(d1,"pi"))
# println(in("pi"=>3.14))
# println(keys(d1))
# println(values(d1))
# for kv in d1
#     println(kv)
# end
# for (key,value) in d1
#     println(key, " : ", value)
# end

##################
#sets
# st1 = Set(["Jim","Pam","Jim"])
# println(st1)
# push!(st1, "Michael")
# println(in("Die", st1))
# st2 = Set(["Stanley", "Mad"])
# println(union(st1,st2))
# println(intersect(st1,st2))
# println(setdiff(st1,st2)) #st1 - st2



##################
#function
# getSum(x,y) = x+y
# x,y = 1,2
# @printf("%d + %d = %d\n", x,y, getSum(x,y))

# function canIVote(age=16)
#     if age > 18
#         println("Can Vote")
#     else
#         println("Cannot Vote")
#     end
# end
# canIVote(43)

# v1 = 5
# function changeV1(v1)
#     global v1 = 10
# end
# changeV1(v1)
# println(v1)

# function getSum2(args...)
#     sum = 0
#     for a in args
#         sum += a
#     end
#     println(sum)
# end
# getSum2(1,2,3,4)

# function next2(val)
#     return (val +1, val+2)
# end
# println(next2(4))

# function makeMultiplier(num)
#     return function(x) return x*num end
# end
# mult3 = makeMultiplier(3)
# println(mult3(6))

# function getSum3(num1::Number, num2::Number)
#     return num1 + num2
# end
# function getSum3(num1::String, num2::String)
#     return parse(Int32,num1)+parse(Int32,num2)
# end
# println("5 + 4 = ", getSum3(5,4))
# println("5 + 4 = ", getSum3("5","4"))

#anonymous function
# v2 = map(x -> x*x, [1,2,3])
# println(v2)
# v3 = map((x,y) -> x+y, [1,2],[3,4])
# println(v3)
# v4 = reduce(+,1:100)
# println(v4)
# sentence =  "This is a string"
# sArray = split(sentence)
# println(sArray)
# longest = reduce((x,y) -> length(x) > length(y) ? x : y, sArray)
# println(longest)


##################
#round,floor,ceil,abs,sqrt,cbrt,hypot,exp(2),log(100),log2(100),log10(100)
# @printf("hypot(90,90) = %d\n", hypot(90,90))
# @printf("log(100) = %d\n", log(100))
# @printf("log2(100) = %d\n", log2(100))
# @printf("log10(100) = %d\n", log10(100))
# x = 5
# println(2x)
# a13 = [1,2,3]
# println(a13.*3)

##################
# @enum Color begin
#     red = 1
#     blue = 2
#     green = 3
# end
# favColor = green::Color
# println(favColor)


##################
#symbol, immutable strings
# :Derek
# println(:Derek)
# d2 = Dict(:pi=>3.14, :e=>2.718)
# println(d2[:pi])


##################
#struct
# struct Customer
#     name::String
#     balance::Float32
#     id::Int
# end
# bob = Customer("Bob Smith", 10.50, 123)
# println(bob.name)
# # bob.name = "Sue Smith"  #error

# abstract type Animal end
# struct Dog <: Animal
#     name::String
#     bark::String
# end
# struct Cat <: Animal
#     name::String
#     meow::String
# end
# bowser = Dog("Bowser","Ruff")
# muffin = Cat("Muffin","Meow")
# function makeSound(animal::Dog)
#     println("$(animal.name) says $(animal.bark)")
# end
# function makeSound(animal::Cat)
#     println("$(animal.name) says $(animal.meow)")
# end
# makeSound(bowser)
# makeSound(muffin)



##################
#Exception handling
# print("Enter a number ")
# num1 = chomp(readline())
# print("Enter a number ")
# num2 = chomp(readline())
# try
#     val = (parse(Int32,num1))/(parse(Int32,num2))
#     if (val == Inf)
#         error("Cannot divide by zeros")
#     else
#         println(val)
#     end
# catch e
#     println(e)
# end


##################
#file handling
# open("file.txt","w") do file
#     write(file, "Here is some random text\n It is great\n")
# end
# open("file.txt") do file
#     data = read(file, String)
#     println(data)
# end
# open("file.txt") do file
#     for line in eachline(file)
#         println(line)
#     end
# end


##################
#macro
# macro doMore(n,exp)
#     quote
#         for i = 1:$(esc(n))
#             $(esc(exp))
#         end
#     end
# end
#
# @doMore(2,println("Hello"))

# macro doWhile(exp)
#     @assert exp.head == :while
#     esc(quote
#     $(exp.args[2])
#     $exp
# end   )
# end
#
# z = 0
# @doWhile while z < 10
#     global z += 1
#     println(z)
# end


##################
# for i=1:5
#     println(i)
# end
