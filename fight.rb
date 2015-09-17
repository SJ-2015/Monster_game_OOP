require_relative 'monster'

class Fight
	attr_accessor :Godzilla, :Mothra

	def initialize
		@Godzilla = Monstor.new("Godzilla")
		@Mothra = Monstor.new("Mothra")
	end

	def battle
		while(@Godzilla.HP>0 && @Mothra.HP>0)
			@Godzilla.attack(@Mothra)
			@Mothra.attack(@Godzilla)
		end # when HP <0

		puts "Game Over!"
		#@Godzilla.HP<@Mothra.HP ? puts @Mothra.name +" wins!" : puts @Godzilla.name +" wins!"		
		if (@Godzilla.HP>@Mothra.HP)
			puts @Mothra.name + " died!"
			puts @Godzilla.name + " wins!"
		else 
			puts @Godzilla.name + " died!"
			puts @Mothra.name + " wins!"
		end
	end
end

game1=Fight.new
game1.battle
