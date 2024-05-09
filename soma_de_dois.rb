def encontrar_indices_soma(array, number1)
  soma = 0
  indices_utilizados = []

  array.each_with_index do |numero, indice|
    soma += numero
    indices_utilizados << indice

    if soma == number1
      return indices_utilizados
    elsif soma > number1
      while soma > number1
        primeiro_elemento = array.shift
        soma -= primeiro_elemento
        indices_utilizados.shift
      end

      if soma == number1
        return indices_utilizados
      end
    end
  end

  nil
end

# Solicita ao usuário o valor number1
puts "Digite o valor desejado:"
number1 = gets.chomp.to_i

# Exemplo de uso com um array predefinido
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# Chama a função encontrar_indices_soma e exibe o resultado
indices = encontrar_indices_soma(array, number1)
if indices
  puts "Os índices utilizados para obter o valor #{number1} são: #{indices.inspect}"
else
  puts "Não foi possível encontrar uma combinação de índices que resulte no valor #{number1}."
end
