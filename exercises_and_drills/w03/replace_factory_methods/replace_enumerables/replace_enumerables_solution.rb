# Solution

class Array
    # - you will need to use #another_each to make your enumerables work. 
    # - do not use the standard #each inside your new methods only use #another_each provided below or the self and yield keywords <<<<<<<<<<<<<<<<<<<<<
    def another_each
      self.length.times do |i|
        yield(self[i])
      end
    end

    # Pseudocode another_reject

    # define the intended function of the method: 

    # Steps
    # 1 - 
    # 2 -
    # 3 - 
    
    # Method
    def another_reject
      #use another_each
    end


    # Pseudocode another_find

    # define the intended function of the method: 

    # Steps
    # 1 - 
    # 2 -
    # 3 - 
    
    # Method
    def another_find
      #use another_each
    end



    # Pseudocode another_map
    
    # define the intended function of the method: 

    # Steps
    # 1 - 
    # 2 -
    # 3 - 
    
    # Method
    def another_map
      #use another_each
    end

  end


# Runner Code / Tests

# another_reject test
reject_example_array = [1, 2, 3, 4, 5]

if reject_example_array.another_reject { |num| num.even? } == [1, 3, 5]
  puts "#another_reject - Pass"
else
  puts "#another_reject - F"
end

# another_find test
find_example_test_1 = (1..10).to_a.another_find { |i| i % 5 == 0 && i % 7 == 0 } == nil
find_example_test_2 = (1..100).to_a.another_find { |i| i % 5 == 0 && i % 7 == 0 } == 35

if find_example_test_1 && find_example_test_2
  puts "#another_find - Pass"
else
  puts "#another_find - F"
end


# another_map test
map_example_test_1 = [1,2,3,4].another_map { |x| x * x } == [1, 4, 9, 16]
map_example_test_2 = [1,2,3,4].another_map { |num| num.to_s + " cat" } == ["1 cat", "2 cat", "3 cat", "4 cat"]

if map_example_test_1 && map_example_test_2
  puts "#another_map - Pass"
else
  puts "#another_map - F"
end


