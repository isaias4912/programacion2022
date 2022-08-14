from threading import main_thread


dueno2=[2354697,"maria","perez",4789689,"pueyrredon",811]
dni= dueno2[0]
apellido=dueno2[2]
for x in dueno2:
    if x != dni and x != apellido:
        print(x)