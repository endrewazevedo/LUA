pares = {}
indice = 1
for i=1, 10 do
   --[[  if(i % 2 == 0) then ]]
        pares[indice] = io.read()
        indice = indice+1
--[[     end ]]
end

--[[ for index in pairs(pares) do
    print(pares[index])
end ]]

--[[ for i = 1, #pares do
    print(pares[i])
end-- ]]

for key, value in pairs(pares) do
    print(key, value)
end