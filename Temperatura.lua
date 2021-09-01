function converte(c)
    temp_convertida = (c*1.8)+32
    return temp_convertida
end

print("Vamos converter a temperatura de C para F\nQual a temperatura em Celcius?")
celcius = io.read("*n")
print("A temperatura em Fahrenheit eh", converte(celcius))
