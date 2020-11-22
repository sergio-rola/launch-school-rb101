def select_fruit(produce)
  produce.select { |_, type| type == 'Fruit'}
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# further exploration

def select_fruit(produce_list)
  selected_produce = {}
  produce_keys = produce_list.keys
  counter = 0

  loop do
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_produce[current_key] = current_value
    end

    counter += 1
    break if counter == produce_keys.size
  end

  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)
