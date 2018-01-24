require 'date'
require 'pp'

   class Pessoa <:: Object
   	attr_reader :nome
   	def initialize(params = {})
   	  @nome = params[:nome]
   	end
   end

   class Fornecedor <:: Pessoa
     def initialize(params = {})
     	super(params)
     end
   end

   class Cliente <:: Pessoa
     def initialize(params = {})
     	super(params)
     end
   end

   class Conta
     attr_reader :descricao, :valor, :data_vencimento

     def initialize(params = {})
     	@descricao = params[:descricao]
     	@valor = params[:valor]
     	@data_vencimento = params[:data_vencimento]
     end
     def conta
     	# some code here
     end
     def cancelar
     	# some code here
     end
   end

   class ContaPagar <:: Conta
     attr_reader :fornecedor

     def initialize(fornecedor, params = {})
     	@fornecedor = fornecedor
     	super(params)
     end
   end

   class ContaReceber <:: Conta
     attr_reader :cliente
     
     def initialize(cliente, params = {})
     	@cliente = cliente
     	super(params)
     end
     def receber
     	# some code here
     end
     def cancelar
     	# some code here
     end
   end


# Instancias de Pessoa
p1 = Cliente.new nome: 'Renato Franco'
p2 = Cliente.new nome: 'Hanzo Kimura'

# Instancias de Fornecedor
f1 = Fornecedor.new nome: 'Coca Cola'
f2 = Fornecedor.new nome: 'Apple Inc'

# Instancias conta a receber
c1 = ContaReceber.new p1,
                      descricao: 'Conta luz',
                      valor: 100.00,
                      data_vencimento: Date.today

c2 = ContaPagar.new f2,
                    descricao: 'Mack Book Pro Late 2018',
                    valor: 18.000,
                    data_vencimento: Date.today

# pp p1, p1
# pp f1, f2
# pp c1, c2
