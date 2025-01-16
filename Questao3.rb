require 'json'

# Leitura do arquivo JSON
file = File.read('dados.json')
dados = JSON.parse(file)

# Cálculos
valores = dados.map { |d| d["valor"].to_f }
valores_uteis = valores.reject { |v| v == 0 } # Remove os zeros (dias sem faturamento)
total_faturamento = valores_uteis.sum
media_faturamento = valores_uteis.sum / valores_uteis.size
maior_faturamento = valores_uteis.max
menor_faturamento = valores_uteis.min
dias_acima_da_media = valores_uteis.select { |v| v > media_faturamento }

# Exibição dos resultados
puts "Maior faturamento diário: R$ #{'%.2f' % maior_faturamento}"
puts "Menor faturamento diário (positivo): R$ #{'%.2f' % menor_faturamento}"
puts "Número de dias com faturamento acima da média: #{dias_acima_da_media.size}"
