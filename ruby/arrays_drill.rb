# 5.2 Release 2 Methods
def add_to_array(arr, item)
	arr << item
end

def build_array(item1, item2, item3) # Release 2
	new_array = [item1, item2, item3]
end

# 5.2 Release 1
p first_array = [] #step 1
p first_array << "pizza" << "beer" << 2016 << "Chicago" << "SF" #step2
first_array.delete_at(2) #step 3
p first_array 
p first_array.insert(2, "wing") # step 4
first_array.shift  # step 5
p first_array
p "It is "+ first_array.include?("beer").to_s + " that this array contains beer." # step 6
second_array = ["cake", "fudge"] # step 7
p third_array = first_array + second_array 

# 5.2 Release 2 outputs
p build_array("Italian", "French", "Chinese") # Step 1 r2
p add_to_array(["taxi"], "uber")
p add_to_array(["truck", "bus"],"train")
p add_to_array(["boat"], "ferry")