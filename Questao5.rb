# Função para inverter os caracteres de uma string
def inverter_string(str)
    invertida = ""
    (str.length - 1).downto(0) do |i|
      invertida += str[i]
    end
    invertida
  end

  print "Digite uma string para inverter: "
  str = gets.chomp

  # Chamada da função
resultado = inverter_string(str)

# Exibição do resultado
puts "String original: #{str}"
puts "String invertida: #{resultado}"