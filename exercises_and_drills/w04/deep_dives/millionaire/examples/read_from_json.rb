require 'json'

file = File.read('homes.json')
data = JSON.parse(file)
p data

# puts JSON.pretty_generate(data_hash) # try this for a more attractive print out