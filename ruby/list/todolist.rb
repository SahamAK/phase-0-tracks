#Names: Saham Khozestani and Jarred Pierce
#todo list
class TodoList 
  def initialize(list)
    @list = list
  end
  def get_items
    @list
  end
  def add_item(item)
    @list << item 
  end
  def delete_item(item)
    @list.delete(item)
  end
  def get_item(index)
    @list[index]
  end
end

=begin 
This section is for answers to the Criteria section:
 This criterion is linked to a Learning OutcomeIdentify the components of an Rspec test
# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

Derive class requirements from a set of Rspec tests
  describe is the section where you initialize the calss. 
  it will give you the methods from the class. This also gives you the structure of the method.
  expect gives you the expected output from each method.
