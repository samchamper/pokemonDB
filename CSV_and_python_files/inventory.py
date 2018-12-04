import math
import random

output = "store_loc_id,item_id,price,number_in_stock\n"

for store in [11,12,15]:
    stock = random.sample(range(1,218), random.randint(30, 100))
    for item in range(1,218):
        price = random.gauss(200,100)
        if random.random() < .1:
            price /= 10
        if random.random() < .1:
            price *= 10
            if random.random() < .4:
                price *= 2
        if price < 10:
            price = 10
        price = math.floor(price)
        number = 0
        if item in stock:
            number = random.gauss(20, 18)
            if number < 2:
                number = 2
            number = math.floor(number)
        output+="{},{},{},{}\n".format(store, item, price,number)


with open("inventory.csv", 'w+') as f:
	f.write(output)
