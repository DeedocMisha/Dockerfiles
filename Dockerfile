#Create image



#Откуда брать ф-лы
FROM openjdk
#Что копировать откуда куда
COPY . /java
#С какой директории грузится
WORKDIR /java
#Port
EXPOSE 80
#Действия при запуске докера   javac это запустить файл
RUN javac Main.java
#вып каждый раз при запуске проекта    ТИПО КОМАНДА java Main
CMD ["java","Main"]