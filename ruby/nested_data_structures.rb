#Name : Saham Khozestani
#Design and build a nested data structure with real-world construct
#Highway full of cars:
#the following is nested array of array and hash.
honda_cars = [["Honda Prelude", "white"],
	occupants = {
    driver: "male",
    num_of_passengers: {
        children: 2,
        adult: 1
        }
        },
    2017,
    nil
	] 

  volvo = [["Volvo x90","blue"],
    occupants = {
      driver: "female",
      num_of_passengers: {
        childer: 2,
        adult:2,
        } ,
      year_model: 2014,
      status: "flat tire"
    }
]

# highway_status is a nested hash of arrays
highway_status = {car_1: honda_cars, car_2: volvo}

p "Highway status: #{highway_status}"
#print information about honda cars:
p "Honda"
p "Vehicle Type : #{highway_status[:car_1][0][0]}, #{highway_status[:car_1][0][1]}"
p "Childern: #{highway_status[:car_1][1][:num_of_passengers][:children]}"

if highway_status[:car_1][3].nil? then status = "unknown" end
puts "Vehicle Status: #{status}"

#working wih volvo nested hash array hash

p "Volvo year: #{highway_status[:car_2][1][:year_model]}"

#accessing key using fetch
color = highway_status.fetch(:car_2)[0][1]
p highway_status.fetch(:car_2)
p "color is #{color}"

#fetch  on a nested hash
adult_in_honda = highway_status.fetch(:car_1)[1][:num_of_passengers][:adult]
p "Number of adults in Honda: #{adult_in_honda}"

#Volvo is a nested array of array and hash
#update the color on the volvo to red.
volvo[0].map!{|key_1| key_1 =="blue"? "red" : key_1}
p volvo[0]
