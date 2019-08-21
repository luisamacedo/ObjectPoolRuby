# O Pool de Objetos permite que outras pessoas "façam check-out"
# de objetos de seu pool, quando esses objetos não são mais 
# necessários por seus processos, eles são retornados ao pool 
# para serem reutilizados. 

# No entanto, não queremos que um processo 
# tenha que esperar que um determinado objeto seja liberado, portanto,
# o Conjunto de Objetos também instancia novos objetos conforme eles 
# são necessários, mas também deve implementar um recurso para limpar
# objetos não utilizados periodicamente.

# Exemplo:
# O padrão de pool de objetos é semelhante a um warehouse de escritório. 
# Quando um novo funcionário é contratado, o gerente do escritório tem que
# preparar um espaço de trabalho para ele. Ela calcula se há ou não um 
# equipamento sobressalente no depósito do escritório. Se assim for, ela
# usa. Se não, ela faz um pedido para comprar novos equipamentos da Amazon.
# No caso de um empregado ser demitido, seu equipamento é transferido para o 
# depósito, onde poderia ser levado quando um novo local de trabalho fosse 
# necessário.

class ReusablePool

  def initialize(size)
    @reusables = []
    (0..size).each do
      @reusables.push(Cat.new)
    end
  end

  def acquire
    @reusables.pop()
  end

  def release(reusable)
    @reusables.push(reusable)
  end

end

class Cat

  def name
     "Endereço do user: "   + self.to_s
  end

end

  puts "\n\nInit no pool"
  reusable_pool = ReusablePool.new(10)
  puts reusable_pool

  puts "\n\nRemovendo Objetos para Utilização"
  reusable = reusable_pool.acquire()
  reusable1 = reusable_pool.acquire()
  puts reusable.name
  puts reusable1.name

  puts "\n\nDevolvendo Objetos para o pool"
  reusable_pool.release(reusable1)
  reusable3 = reusable_pool.acquire()
  puts reusable3.name