# Valores de faturamento por estado
faturamento_estados = {
  "SP" => 67836.43,
  "RJ" => 36678.66,
  "MG" => 29229.88,
  "ES" => 27165.48,
  "Outros" => 19849.53
}

# Cálculo do total mensal
total_mensal = faturamento_estados.values.sum

# Exibição dos resultados
puts "Percentual de representação dos estados:"
faturamento_estados.each do |estado, valor|
  percentual = (valor / total_mensal) * 100
  puts "#{estado}: #{'%.2f' % percentual}%"
end

