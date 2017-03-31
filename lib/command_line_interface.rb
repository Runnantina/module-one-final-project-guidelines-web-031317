

class CommandLineInterface

  def welcome
   puts "Welcome to a very special trivia game!"
   puts "Please type in your name:"
   name = gets.chomp
   puts "Welcome, #{name} to Triphy!"

   # The CLI must provide access to data from a
   # SQLITE3 database using ActiveRecord.
  end


 def question_one
   puts QUESTION
   user_input = gets.chomp
   counter = 0

  #  until user_input == ANSWER
  #    puts "Try again!"
  #    puts
  #    user_input = gets.chomp
  #  end

   if user_input == ANSWER
     puts "Correct!"
     until counter == 3
       counter += 1
     end
   else
     puts "try again"
     puts QUESTION
     user_input = gets.chomp

   end
   open_gif
 end

 def need_three_wins

   counter = 0

   until counter == 3
     random_q = Question.all.sample #this gets us a random question
     question = random_q.question
     answer = random_q.answers[0].answer #[0] is same as first
     #problem here is that questions with multiple answers
     #will only take first answer... cuz of [0] above,
     #used to get into array to get to answer string.
     #want "What do you prefer: cats or dogs?"
     #to take both answers as correct, but can't,
     #and exec "giphy '#{answer}'" will relate to first answer too.

     puts question
     user_input = gets.chomp.downcase

     if user_input == answer
       counter += 1
       puts "\nCorrect! You have answered #{counter} out of 3 questions correctly.\n\n"
     else
       puts "\nTry again!\n\n"
     end #end if..else statement
   end #end until loop

   if counter == 3
     puts "You win!"
     exec "giphy '#{answer}'" #YES!!!! works
     #open_gif
   end
 end #end method



 # def question_two
 #   puts QUESTION_2
 #   user_input = gets.chomp
 #
 #   until user_input == ANSWER_2
 #     puts "Try again!"
 #     puts QUESTION_2
 #     user_input = gets.chomp
 #   end
 #
 #   if user_input == ANSWER_2
 #     puts "Correct!"
 #    #  open_gif
 #   end
 # end
 #
 # def final_question
 #   puts QUESTION_3
 #   user_input = gets.chomp
 #
 #   until user_input == ANSWER_3
 #     puts "Try again!"
 #     puts QUESTION_3
 #     user_input = gets.chomp
 #   end
 #
 #   if user_input == ANSWER_3
 #     puts "Hooraaaaay!"
 #     open_gif
 #   end
 # end



 def open_gif
   #giphy 'dance'
   #exec 'giphy "dance"' #YES!!!! works
   exec "giphy '#{ANSWER}'" #YES!!!! works
 end


end #class

  #  after checking answers, IF correct, then shove correct answer into correct_answers
  # until correct_answers.count == 3 , keep asking randomized questions
  # then move onto NEW SET of questions

# Questions:

# Who is the most famous duck in Disney?
# What is the nickname of McDonald's and is argubly the name of the world's most famous mouse?
# What is the adjective that means

# Last Questions:

# What does Shrek call his best friend?


# go to run.rb to do driver code
