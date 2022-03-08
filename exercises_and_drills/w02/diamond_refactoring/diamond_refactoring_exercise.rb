# Diamond Refactoring

# Initial Solution

def diamond_printer(word)
  message = word.split("")
  array = []

  characters_list = {          # Is there a cleaner way of producing this list?
                     "A" => 1, 
                     "B" => 2, 
                     "C" => 3, 
                     "D" => 4, 
                     "E" => 5, 
                     "F" => 6, 
                     "G" => 7, 
                     "H" => 8, 
                     "I" => 9, 
                     "J" => 10, 
                     "K" => 11, 
                     "L" => 12, 
                     "M" => 13, 
                     "N" => 14, 
                     "O" => 15, 
                     "P" => 16, 
                     "Q" => 17, 
                     "R" => 18, 
                     "S" => 19, 
                     "T" => 20, 
                     "U" => 21, 
                     "V" => 22, 
                     "W" => 23, 
                     "X" => 24, 
                     "Y" => 25, 
                     "Z" => 26
                     }

  characters_list_reversed = {
                               "Z" => 26,
                               "Y" => 25, 
                               "X" => 24, 
                               "W" => 23, 
                               "V" => 22, 
                               "U" => 21, 
                               "T" => 20, 
                               "S" => 19, 
                               "R" => 18, 
                               "Q" => 17, 
                               "P" => 16, 
                               "O" => 15, 
                               "N" => 14, 
                               "M" => 13, 
                               "L" => 12, 
                               "K" => 11, 
                               "J" => 10, 
                               "I" => 9, 
                               "H" => 8, 
                               "G" => 7, 
                               "F" => 6, 
                               "E" => 5, 
                               "D" => 4, 
                               "C" => 3, 
                               "B" => 2, 
                               "A" => 1
                               }

  message.each do |l|
    upcased_l = l.upcase # Why is it important to run #upcase?
    if upcased_l == " " || upcased_l == "?" || upcased_l == "." || upcased_l == "!" || upcased_l == "-" # When will this prove true? What happens if it proves true?
      array << [upcased_l]
    else
      word_array = [] # What does this represent in the code? Is this a good name for the variable?
      characters_list.each_key do |c| # What is c representing?
        upcased_c = c.upcase

        if characters_list[upcased_c] == 1
          if characters_list[upcased_l].even? # What is the thing being checked as being even? And what is the effect of checking this thing?
            line = " " * (characters_list[upcased_l] * 2 - 1)
            middle = line.length / 2 
            line[middle] = "A"
            word_array << line
          end

          if characters_list[upcased_l].odd?
            line = " " * (characters_list[upcased_l] * 2 - 1)
            middle = line.length / 2
            line[middle] = "A"
            word_array << line
          end

          if characters_list[upcased_l] == 1
            break # Is this necessary?
          end
        elsif characters_list[upcased_c] == characters_list[upcased_l]
          if characters_list[upcased_l].even?
            word_array << upcased_c + " " * (characters_list[upcased_c] * 2 - 3) + upcased_c
          end

          if characters_list[upcased_l].odd?
            word_array << upcased_c + " " * (characters_list[upcased_c] * 2 - 3) + upcased_c
          end 

          break # Is this break necessary? Is it different from the other break? 
        else
          if characters_list[upcased_l].even?
            line = " " * (characters_list[upcased_l] * 2 - 1) # What is created in this line variable?
            middle = line.length / 2
            placement_1 = middle - (characters_list[upcased_c] - 1) # What do the placements represent?
            placement_2 = middle + (characters_list[upcased_c] - 1)
            line[placement_1] = upcased_c
            line[placement_2] = upcased_c
            word_array << line
          end

          if characters_list[upcased_l].odd?
            line = " " * (characters_list[upcased_l] * 2 - 1)
            middle = line.length / 2
            placement_1 = middle - (characters_list[upcased_c] - 1)
            placement_2 = middle + (characters_list[upcased_c] - 1)
            line[placement_1] = upcased_c
            line[placement_2] = upcased_c
            word_array << line
          end
        end
      end

      if upcased_l != "A" # Is this if statement necessary?
        characters_list_reversed.each_key do |c|
          upcased_c = c.upcase

          if characters_list[upcased_c] == 1
            if characters_list[upcased_l].even?
              line = " " * (characters_list[upcased_l] * 2 - 1)
              middle = line.length / 2 
              line[middle] = "A"
              word_array << line
            end

            if characters_list[upcased_l].odd?
              line = " " * (characters_list[upcased_l] * 2 - 1)
              middle = line.length / 2
              line[middle] = "A"
              word_array << line
            end     
          elsif characters_list[upcased_c] < characters_list[upcased_l]
            if characters_list[upcased_l].even?
              line = " " * (characters_list[upcased_l] * 2 - 1)
              middle = line.length / 2
              placement_1 = middle - (characters_list[upcased_c] - 1)
              placement_2 = middle + (characters_list[upcased_c] - 1)
              line[placement_1] = upcased_c
              line[placement_2] = upcased_c
              word_array << line
            end

            if characters_list[upcased_l].odd?
              line = " " * (characters_list[upcased_l] * 2 - 1)
              middle = line.length / 2
              placement_1 = middle - (characters_list[upcased_c] - 1)
              placement_2 = middle + (characters_list[upcased_c] - 1)
              line[placement_1] = upcased_c
              line[placement_2] = upcased_c
              word_array << line
            end
          end
        end
      end
      array << word_array
    end
  end
  array.flatten!.join("\n") + "\n"
end

#Commit 3 - Refactor Solution

  # You should keep the code above commented out but left intact, so you can refer to the original code if you change too much and get lost.

#Commit 2 - Write Runner Code / Tests

puts diamond_printer("ace")
puts "========================="
puts diamond_printer("ghost")
puts "========================="
puts diamond_printer("De Beers")


