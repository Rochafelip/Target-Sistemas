def fibonacci?(numero)
    # Inicializando os dois primeiros valores da sequência
    a, b = 0, 1
  
    # Loop para gerar a sequência enquanto b <= numero
    while b <= numero
      return true if b == numero 
      a, b = b, a + b # Atualiza os valores de a e b
    end
  
    false # Se não encontrou o número na sequência, retorna false
  end
  
  # Apresentação inicial
  puts "Bem-vindo ao verificador de números na sequência de Fibonacci!"
  puts "A sequência de Fibonacci começa com 0, 1 e cada número é a soma dos dois anteriores."
  puts "Por exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, ..."
  
  # Solicita ao usuário o número a ser verificado
  print "\nPor favor, informe um número para verificar se ele pertence à sequência de Fibonacci: "
  numero = gets.to_i
  
  # Verifica e exibe o resultado
  if fibonacci?(numero)
    puts "\nQue legal! O número #{numero} faz parte da sequência de Fibonacci. "
  else
    puts "\nHmm... Parece que o número #{numero} não está na sequência de Fibonacci."
  end
  
  puts "\nObrigado por usar o verificador de Fibonacci! Até a próxima. "
  