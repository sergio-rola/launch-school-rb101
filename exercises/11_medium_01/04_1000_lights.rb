def initialize_lights(n)
  ['on'] * n
end

def toggle_lights(lights, pass)
  to_toggle = []
  (pass..lights.size).each { |num| to_toggle << num if num % pass == 0 }

  to_toggle.each do |switch|
    if lights[switch - 1] == 'on'
      lights[switch - 1] = 'off'
    else
      lights[switch - 1] = 'on'
    end
  end

  lights
end

def lights_state(number_lights)
  lights = initialize_lights(number_lights)
  lights_on = []

  2.upto(number_lights) { |n| toggle_lights(lights, n) }
  lights.each.with_index { |light, idx| lights_on << idx + 1 if light == "on" }

  lights_on
end

p lights_state(5) == [1, 4]
p lights_state(10) == [1, 4, 9]
