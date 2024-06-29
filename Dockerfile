FROM openjdk:11

WORKDIR /workspace

RUN apt update && apt install -y git gradle make

RUN git clone https://github.com/owainlewis/arch.git

WORKDIR /workspace/arch

COPY bin .

RUN make

WORKDIR /code

COPY bin .

# 
# CMD "./run.sh"