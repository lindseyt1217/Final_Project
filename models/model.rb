# this is where we will write ruby code that will tellour app what to do

# it will take user input and do one of the following:
# do a calculation
# use conditionals to make a comparison
# there will probably also be a method
# add pieces of data together
# pull data from an array, hash, API

# you should be able to TEST THIS MODEL in the terminal using "puts" to get results

# def method(parameter)
    # method does something without puts
# end
# don't put puts in our method

# testing the method (in the terminal):
# puts method


# Sustainability Quizzes

# FOOD QUIZ

# puts "How often do you eat meat?"
#     puts "never"
#     puts "1 - 3 days per week"
#     puts "4 or more days per week"

food_answer1 = gets.chomp # this is only here to test in the terminal
def food_question1(food_answer1)
   if food_answer1 == "never"
       @food_score1 = 0
   elsif food_answer1 == "1 - 3 days per week"
       @food_score1 = 1
   elsif food_answer1 ==  "4 or more days per week"
        @food_score1 = 2
   end
   @food_score1
end
    
# puts "How often do you consume animal byproducts (i.e. dairy and eggs)?"
#     puts "never"
#     puts "1 - 3 days per week"
#     puts "4 or more days per week"

food_answer2 = gets.chomp # this is only here to test in the terminal   
def food_question2(food_answer2)
   if food_answer2 == "never"
      @food_score2 = 0
   elsif food_answer2 == "1 - 3 days per week"
       @food_score2 = 1
   elsif food_answer2 == "4 or more days per week"
       @food_score2 = 2
   end
   @food_score2
end

# puts "How many meals do you eat meat/animal byproducts?"
#     puts "none"
#     puts "1 meal"
#     puts "2+ meals"

food_answer3 = gets.chomp # this is only here to test in the terminal
def food_question3(food_answer3)
   if food_answer3 == "none"
       @food_score3 = 0
   elsif food_answer3 == "1 meal"
        @food_score3 = 1
   elsif food_answer3 == "2+ meals"
       @food_score3 = 2
   end
   @food_score3
end

def food_score
    @food_score = @food_score1.to_i + @food_score2.to_i + @food_score3.to_i
    @food_score
end

food_question1(food_answer1)
food_question2(food_answer2)
food_question3(food_answer3)

puts food_score

# FOOD RESULTS
def food_pts(food_score)
    if food_score ==0
        puts "Keep up the 100% plant based lifestyle! You are making a positive impact on the environment!"
    elsif food_score > 0 && food_score < 4 
        puts "You're almost 100% plant based. Keep incorporating plants into your diet and try to eat less animals/animal byproducts. You can do it!"
    else 
        puts "Lets try to improve your lifestyle. We can start by eating more plants and less animals."
    end 
end

puts food_pts(food_score)

# FASHION

# puts "What stores do you shop at?"
#     puts "I don't shop."
#     puts "thrift stores/second hand"
#     puts "Forever 21, H&M, Zara, Urban Outfitters, GAP, Wet Seal"

fashion_answer1 = gets.chomp # this is only here to test in the terminal
def fashion_question1(fashion_answer1)
  if fashion_answer1 == "I don't shop."
      @fashion_score1 = 0
  elsif fashion_answer1 == "thrift stores/second hand"
      @fashion_score1 = 1
  elsif fashion_answer1 == "Forever 21, H&M, Zara, Urban Outfitters, GAP, Wet Seal"
    @fashion_score1 = 2
  end
  @fashion_score1
end

# puts "What do you do with clothes you don't want?"
#     puts "I throw it away. I don't need/want it anymore."
#     puts "I donate what I can and reuse/recycle the rest."
#     puts "I sell my clothes."

fashion_answer2 = gets.chomp # this is only here to test in the terminal
def fashion_question2(fashion_answer2)
  if fashion_answer2 == "I throw it away. I don't need/want it anymore."
      @fashion_score2 = 2
  elsif fashion_answer2 == "I donate what I can and reuse/recycle the rest."
      @fashion_score2 = 0
  elsif fashion_answer2 == "I sell my clothes."
    @fashion_score2 = 0
  end
  @fashion_score2
end

def fashion_score
    @fashion_score = @fashion_score1.to_i + @fashion_score2.to_i
    @fashion_score
end

fashion_question1(fashion_answer1)
fashion_question2(fashion_answer2)

puts fashion_score

# FASHION RESULTS
def fashion_pts(fashion_score)
     if fashion_score == 0
         puts "Thank you for shopping ethically and sustainably!"
     else 
         puts "Lets see how you can shop more ethically and sustainably."
     end
end

puts fashion_pts(fashion_score)

# Fitness 
# puts "How often do you excercise?"
#     puts "3 or more times per week"
#     puts "1 - 2 times per week"
#     puts "never"

fitness_answer1 = gets.chomp # this is only here to test in the terminal
def fitness_question1(fitness_answer1)
  if fitness_answer1 == "3 or more times per week"
      @fitness_score1 = 0
  elsif fitness_answer1 == "1 - 2 times per week"
      @fitness_score1 = 1
  elsif fitness_answer1 == "never"
      @fitness_score1 = 2
  end
  @fitness_score1
end

# puts "How intense are your workouts?"
#     puts "I work really hard and sweat A LOT."
#     puts "I work pretty hard but take a lot of breaks."
#     puts "I don't sweat."

fitness_answer2 = gets.chomp # this is only here to test in the terminal
def fitness_question2(fitness_answer2)
  if fitness_answer2 == "I work really hard and sweat A LOT."
      @fitness_score2 = 0
  elsif fitness_answer2 == "I work pretty hard but take a lot of breaks."
      @fitness_score2 = 1
  elsif fitness_answer2 == "I don't sweat."
      @fitness_score2 = 2
  end
  @fitness_score2
end

def fitness_score
    @fitness_score = @fitness_score1.to_i + @fitness_score2.to_i
    @fitness_score
end

# FITNESS
fitness_question1(fitness_answer1)
fitness_question2(fitness_answer2)

puts fitness_score

# Fitness
def fitness_pts(fitness_score)
    if fitness_score == 0
        puts "You are such an inspiration! Keep up your awesome work! (It will pay off.)"
    elsif fitness_score > 0 && fitness_score < 4
        puts "Good job for training your body. Lets see how you can do an even better job."
    else 
        puts "Excercising doesn't have to be a chore! We'll show you the benefits of excercising and how you can start incorporating it into your life."
    end
end

puts fitness_pts(fitness_score)