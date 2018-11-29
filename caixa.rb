class Caixa
	@@compras 		 = ["par de meias", "par de meias", "camiseta", "chinelo"]
	@@blackfriday = true
	@@total       = 0.00

	## Subsituiu os nomes dos produtos pelos valores
	def atribuirValor
		@@compras.each do |produto|
			i = @@compras.index(produto)
			case produto
				when "par de meias"
					@@compras[i] = 11.99
				when "camiseta"
					@@compras[i] = 29.99
				when "chinelo"
					@@compras[i] = 24.99
				else
					throw "Produto não consta."
			end
		end
	end

	## Aplica desconto de 20% nos produtos se for Black Friday
	def aplicarDesconto
		if @@blackfriday
			@@compras.map! { |p| (p*0.8).round(2) }
		end
	end

	## Calcula o preço final
	def valorTotal
		@@compras.each do |c|
			@@total += c
		end
	end

	## Imprime os valores
	def imprimeValores
		puts @@compras
		puts "Total:"
		puts @@total.round(2)
	end
end

## MAIN / Receita

caixa1 = Caixa.new
caixa1.atribuirValor
caixa1.aplicarDesconto
caixa1.valorTotal
caixa1.imprimeValores

