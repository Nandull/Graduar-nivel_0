array = [1, 2, 3, 4, 4, 5, 6, 7, 7, 7, 8, 9, 10, 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
puts "Meu Array esta muito grande, preciso remover um numero dele."
puts "Você me ajuda, escolha um numero digite abaixo: "
numero_remover = gets.chomp.to_i
array.reject! { |a| a == numero_remover }

puts "Meu array modificado é: #{array.inspect}" 
