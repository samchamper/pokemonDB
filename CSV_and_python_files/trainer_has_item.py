import random

output = "trainer,item\n"

for trainer in range(1,43):
    num_items = random.randint(0,3)
    for item in range(num_items):
        output += "{},{}\n".format(trainer, random.randint(1,217))

for trainer in range(43,47):
    num_items = random.randint(1,4)
    for item in range(num_items):
        output += "{},{}\n".format(trainer, random.randint(1,217))

for trainer in range(47,52):
    num_items = random.randint(3,6)
    for item in range(num_items):
        output += "{},{}\n".format(trainer, random.randint(1,217))


with open("trainer_has_item.csv", 'w+') as f:
    f.write(output)
