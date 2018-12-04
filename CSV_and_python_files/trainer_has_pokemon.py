import random

output = "trainer,pokemon,level\n"

# Trainers higher up the list have higher level pokemon.
for trainer in range(1,30):
    for pokemon in range(random.randint(2,5)):
        lvl = int(trainer/3 + random.randint(1, 10))
        if lvl < 5:
            lvl = 5
        output += "{},{},{}\n".format(trainer, random.randint(1,152), lvl)

for trainer in range(30,43):
    for pokemon in range(random.randint(3,6)):
        lvl = int(trainer/2 + random.randint(0, 10))
        output += "{},{},{}\n".format(trainer, random.randint(1,152), lvl)

# These trainers are the toughest.
for trainer in range(43,52):
    for pokemon in range(6):
        lvl = int(trainer + random.randint(0, 10))
        output += "{},{},{}\n".format(trainer, random.randint(1,152), lvl)

with open("trainer_has_pokemon.csv", 'w+') as f:
    f.write(output)
