#Build a banking app

########################################
#userCase

#first time user
#prompted to use password
#uses app for 3 reasons 
  # 1)deposit money 
  # 2)check balance
  # 3)withdraw money

########################################
#Display a nice welcome message
#The initial balance should be 0
#Show this on screen when the app runs
#Add password prompt
#Wrap the program in a loop so the user can view balance. 
#Then deposit over and over
#Clear the screen between loops
#Implement a withdraw feature but they can't withdraw more than their total balance.


#---- if password is correct-------
#Ask user what they would like to do 

  #OPTION 1:If they type balance and hit return, show them their balance! 
  #If the user types anything other than balance, say "Invalid selection!"

  #OPTION 2:Add 'deposit' as an option 
  #If they select it, ask 'how much would you like to deposit?' 
  #Update the balance and show it back to the user.

#----- if password is incorrect----------
#Deny access with message "Invalid password"
#Return them to welcome screen





password = "ruby"
balance = 0

  puts #############################
  puts "Welcome to this banking app"
  puts "---------------------------"
  puts "Your balance is 0"
  puts "---------------------------"
  puts "What is your 4 letter password?"

myanswer = gets.chomp

if myanswer == password    
  puts "-------------------------"
  puts "Please proceed"
  continue = 'y'
  while continue == 'y' do
    puts "-------------------------"
    puts "What would you like to do?"

    response = gets.chomp

    if response == "check"
      puts "----------------------------"
      puts "Your balance is #{balance}"
      puts "----------------------------"
    
    elsif response == "deposit"
      puts "-----------------------------------"
      puts "How much would you like to deposit?"
      puts "-----------------------------------"
    
      # balance = balance + gets.chomp.to_i
      balance += gets.chomp.to_i
    
      puts "-----------------------------------"
      puts "You have $ #{balance} in your account" 
      puts "-----------------------------------"
    
    elsif response == "withdraw"
      puts "-----------------------------------"
      puts "How much would you like to withdraw?"
      puts "-----------------------------------"        
      withdrawAmount = gets.chomp.to_i
      if balance >= withdrawAmount
        puts "Here's your money!"      
        balance -= withdrawAmount
        puts balance

        puts "-----------------------------------"
        puts "You have $ #{withdrawAmount} in your account" 
        puts "-----------------------------------"
  
      else
        puts "-----------------------------------"
        puts "You are broke af" 
        puts "-----------------------------------"

      end
      
      
    else
      puts "#########################################"
      puts "Invalid selection!"
      puts "########################################"
    
    end
    puts "Do you want to continue? (Y/N)"

    continue = gets.chomp
  end
    
else
    puts "Invalid password, calling the Police!"
  
end
  




