FROM ubuntu

LABEL author="Hoang Thanh Lich 211-331"

RUN apt-get update
RUN apt-get install g++ -y

WORKDIR /Exam/
RUN mkdir Proj_Hoang
WORKDIR /Exam/Proj_Hoang/
COPY *.cpp /Exam/Proj_Hoang/
COPY *.h /Exam/Proj_Hoang/
COPY *.txt /Exam/Proj_Hoang/

RUN g++ -o myProgram main.cpp myfile.cpp

ENTRYPOINT  ["./myProgram"]