class Game

	attr_reader :scores,:attempts,:try1,:try2,:try1Thrown,:try2Thrown,:bonus3,:bonus4,:frame,:nextRollBonus,:fillShots
	def initialize
		
		@scores=0
		@frame=1
		@attempts=[]
		@try1=0
		@try2=0
		@fillShots=0
		@try1Thrown=0
		@try2Thrown=0
	end
	def roll(pins)
		@attempts.push(pins)
	end
	def score_array(arr)
		arr.each do |swag|
			roll(swag)
		end
	end
	def score()
		puts "Score Sheet : #{attempts}"
		attempts.each do |yolo|
			if(fillShots>3)
				puts "Exceed number of throws possible in this game."
			elsif(frame>=10)
				@scores+=yolo
			elsif(try1Thrown==0&&yolo==10)
				@scores+=yolo
				if(attempts.index(yolo)<=attempts.length-3)
					@scores+=attempts.at(attempts.index(yolo)+1)+attempts.at(attempts.index(yolo)+2)
				elsif(attempts.index(yolo)==attempts.length-2)
					@scores+=attempts.at(attempts.index(yolo)+1)
						end

						
				@frame+=1
		
			elsif 
				@scores+=yolo
				if(@try1Thrown==0)
					@try1=yolo
					@try1Thrown=1
					@frame+=0.5
				else
					@try2=yolo
					@try2Thrown=1
					@frame+=0.5
				end
				if((@try1+@try2)==10)
					@scores+=attempts.at(attempts.index(try2)+1)
					if(frame==10)
						fillShots=1
					end
				end
				if((@try1Thrown==1)&(@try2Thrown==1))
					@try1=0
					@try2=0
					@try1Thrown=0
					@try2Thrown=0
				end
				
			end
			#b=[0]
			attempts[attempts.index(yolo)]=0
		end
		
		if(frame==10)
			puts"Total Score : #{scores}"
			scores
		
		else
			puts "Insufficient score arary"
			nil
		end
			
	end

end
