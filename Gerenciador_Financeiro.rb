codigo = nil
@conta = []

def adicionar_valor
  value = gets.chomp.to_f
  @conta << { type: "entrada", value: value}
end

def remover_valor
  value = gets.chomp.to_f
  @conta << { type: "saída", value: value}
end

def total_entrada
  total_entrada = 0
  @conta.each { |movimentcao|
    #if movimentcao[:type] = "entrada"
      total_entrada += movimentcao[:value] if movimentcao[:type].eql?("entrada")
}
  total_entrada
end

def total_saida
  total_saida = 0
  @conta.each do |movimentcao|
    #if movimentcao[:type] = "saida"
    total_entrada += movimentcao[:value] if movimentcao[:type].eql?("saida")
    end
  total_saida
end

def saldo
  total_entrada - total_saida
end

def conta_detalhada
  @conta.each do |movimentacao|
    puts "Tipo de movimentação: #{movimentacao[:type]}, Valor: #{movimentacao[:value]}"
  end
end

def entrada_detalhada
  @conta.each do |movimentcao|
    puts "Total de entrada: R$ #{movimentcao[:value]}" if movimentcao[:type].eql?("entrada")
  end
end

def saida_detalhada
  @conta.each do |movimentcao|
    puts "Total de saída: R$ #{movimentcao[:value]}" if movimentcao[:type].eql?("saida")
  end
end

loop do
  puts "1) Adicionar Renda\n2) Adicionar Gasto\n3) Total na Conta\n4) Conta Detalhada\n5) Total de Entradas\n6) Total de Saída\n0) Sair"
  codigo = gets.chomp.to_i

  case
  when codigo == 0
    puts "Até mais!"
      break

  when codigo == 1
    puts "Adcionar Entrada"
    adicionar_valor
    puts "Ação Registrada"
    puts "-" * 15

  when codigo == 2
    puts "Adcionar Saída"
    remover_valor
    puts "Ação Registrada"
    puts "-" * 15

  when  codigo == 3
    puts "Seu saldo é: R$ #{saldo}."
    puts "-" * 15

  when codigo == 4
    puts conta_detalhada
    puts "-" * 15

  when codigo == 5
    puts "1) Entradas Detalhadas\n2) Entradas Consolidadas"
    selecao = gets.chomp.to_i
    if selecao == 1
      entrada_detalhada
      puts "-" * 15
    elsif selecao == 2
      puts "Total de Entrada: R$ #{total_entrada}"
      puts "-" * 15
    end


  when codigo == 6
    puts "1) Saidas Detalhadas\n2) Saidas Consolidadas"
    selecao = gets.chomp.to_i
    if selecao == 1
      saida_detalhada
      puts "-" * 15
    elsif selecao == 2
      puts "Total de Saídas: R$ #{total_saida}"
      puts "-" * 15
    end

  else
    puts "Certifique-se de escolher os numeros a cima!"
  end
end

