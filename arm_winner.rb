# //Given the lifting strength of the arms of two people.
# //Determine the results of a arm wrestling match between the two
# //[leftArm,rightArm]
# playerOne = [10,13]
# playerTwo = [11,9]
# //in: playerOne,PlayerTwo
# //out: Left Arm winner, playerTwo
# //     Right Arm winner, playerOne

# //in: [11,10], [11,9]
# //out: Left arm tie 
# //     Right arm winner, playerOne

def arm_winner(playerOne, PlayerTwo)
  if playerOne[0] > playerTwo[0]
    puts "Left Arm winner, playerOne"
  elsif playerOne[0] < playerTwo[0]
    puts "Left Arm winner, playerTwo"
  else
    puts "Left arm tie" 
  end

  if playerOne[1] > playerTwo[1]
    puts "Right Arm winner, playerOne"
  elsif playerOne[1] < playerTwo[1]
    puts "Right Arm winner, playerTwo"
  else
    puts "Right arm tie" 
  end
end