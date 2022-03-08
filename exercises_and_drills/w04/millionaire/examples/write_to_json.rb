require 'json'

homes_data = [
                {
                  address: "257 North Cedar St.", 
                  people: ["Billy Joe", "Bobby Sue", "Baby Herman"], 
                  beds: 1, 
                  bath: 2
                },
                {
                  address: "142 Main St.", 
                  people: ["Samantha", "Carrie", "Miranda", "Charlotte"], 
                  beds: 4, 
                  bath: 4
                },
                {
                  address: "5668 Manchester Ave.", 
                  people: ["Harry Nilsson"], 
                  beds: 1, 
                  bath: 1
                }
              ]

File.open("homes.json","w") do |f|
  f.write(homes_data.to_json)
end