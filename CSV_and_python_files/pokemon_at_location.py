import random

# The only pokemon that are available to be caught on routes are the lest evolved forms.
avail = [1,4,7,10,13,16,19,21,23,25,27,29,32,35,37,39,41,43,46,48,50,52,54,56,58,60,63,66,69,72,74,77,79,81,83,84,86,88,90,92,95,96,98,100,102,104,106,107,108,109,111,113,114,115,116,118,120,122,123,124,125,126,127,128,129,131,132,133,137,138,140,142,143,144,145,146,147,150,151]

output = "loc_id,pokemon_id\n"

for route in range(1,10):
    on_route = random.sample(avail, random.randint(7, 10))
    for mon in on_route:
        output+="{},{}\n".format(route, mon)

with open("pokemon_at_location.csv", 'w+') as f:
    f.write(output)
