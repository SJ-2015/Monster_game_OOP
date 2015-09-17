class Monstor
	attr_accessor :HP, :name
	
	def initialize(name)
		@HP =10
		@name = name
	end

	#parameter can't be defined as capitalized (not "Opponent")
	def attack(opponent)
		moveNumber = Random.new.rand(1..3)
		if(moveNumber == 1)
			p @name + " kicks "+ opponent.name #+" loses 3 HP"
			opponent.HP-=3
			p opponent.name + " loses 3 HP. His new HP is"
			p opponent.HP
		elsif(moveNumber == 2)
			p @name + " scrachs "+opponent.name  #+" loses 2 HP"	
			p opponent.name + " loses 2 HP. His new HP is"
			opponent.HP-=2
			p opponent.HP
		elsif(moveNumber == 3)
			p @name + " bites "+opponent.name  #+" loses 1 HP"
			p opponent.name + " loses 1 HP. His new HP is"
			opponent.HP-=1
			p opponent.HP
		end
	end
end

