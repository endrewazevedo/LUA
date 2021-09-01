--[[print("Vamos verificar se o numero eh par ou impar\nDigite o numero")

numero = io.read("*n")

if numero % 2 == 0 then
    print("Par")
else
    print("Impar")    
end--]]

--[[print("Vamos verificar se o numero eh par ou impar\nDigite o numero")

while (numero ~= 0) do
    numero = io.read("*n")
    if numero % 2 ~= 0 then
        print("Impar")
    else
        print("Par")    
    end
end--]]

--[[print("Vamos verificar se o numero eh par ou impar\nDigite o numero")
repeat
    numero = io.read("*n")
    if numero % 2 ~= 0 then
        print("Impar")
    else
        print("Par")    
    end
until numero == 0--]]

print("Vamos verificar se o numero eh par ou impar\nDigite o numero")
for i=1, 5 do
    numero = io.read("*n")
    if numero % 2 ~= 0 then
        print("Impar")
    else
        print("Par")    
    end
end