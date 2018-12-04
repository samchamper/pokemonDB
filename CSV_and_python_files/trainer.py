import random

output = "trainer_id,route,x_coord,y_coord\n"

trainer_id=1

for route in range(1,10):
    for trainers in range(random.randint(2,8)):
        output+="{},{},{},{}\n".format(trainer_id, route, random.randint(0,255), random.randint(0,255))
        trainer_id += 1

with open("trainer.csv", 'w+') as f:
    f.write(output)
