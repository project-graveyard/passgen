init = Dict(
    "A" => 0,
    "B" => 1,
    "C" => 2,
    "D" => 3,
    "E" => 4,
    "F" => 5,
    "G" => 6,
    "H" => 7,
    "I" => 8,
    "J" => 9,
    "K" => 10,
    "L" => 11,
    "M" => 12,
    "N" => 13,
    "O" => 14,
    "P" => 15,
    "Q" => 16,
    "R" => 17,
    "S" => 18,
    "T" => 19,
    "U" => 20,
    "V" => 21,
    "W" => 22,
    "X" => 23,
    "Y" => 24,
    "Z" => 25,
    "a" => 26,
    "b" => 27,
    "c" => 28,
    "d" => 29,
    "e" => 30,
    "f" => 31,
    "g" => 32,
    "h" => 33,
    "i" => 34,
    "j" => 35,
    "k" => 36,
    "l" => 37,
    "m" => 38,
    "n" => 39,
    "o" => 40,
    "p" => 41,
    "q" => 42,
    "r" => 43,
    "s" => 44,
    "t" => 45,
    "u" => 46,
    "v" => 47,
    "w" => 48,
    "x" => 49,
    "y" => 50,
    "z" => 51,
    "0" => 52,
    "1" => 53,
    "2" => 54,
    "3" => 55,
    "4" => 56,
    "5" => 57,
    "6" => 58,
    "7" => 59,
    "8" => 60,
    "9" => 61,
    "*" => 62,
    "-" => 63,
    "_" => 64,
    "`" => 65,
    "&" => 66,
    "£" => 67,
    "(" => 68,
    ")" => 69,
    "#" => 70,
    "?" => 71,
    " " => 72,
)

print("Enter a string: ")
data = readline()

data_array = Vector{String}(undef, length(data))

for i in eachindex(data)
    data_array[i] = string(data[i])
end

data_num = Vector{Int64}()
for x in data_array
    append!(data_num, init[x])
end

f(x) = (29x - 31) % 73

for x = 1:length(data_num)
    data_num[x] = f(data_num[x])
end

de_init = Dict{Int64,String}()

for (m, n) in zip(values(init), keys(init))
    de_init[m] = n
end

encrypted = ""
for x in data_num
    global encrypted *= de_init[x]
end

println("Your password is $encrypted")
