EPOS, or Embedded Parallel Operating System, is a operating system made in Federal University of Santa Catarina (UFSC) and can run actually in a big range of devices.

This container aims to simplify the development of EPOS applications by providing a Ubuntu Trusty container with all the dependencies you should need to run EPOS 1 applications, based on IA32 architecture.

## How to use

Given the EPOS code is in the current directory, you can compile and run that EPOS application in **any** Linux computer by using just three commands:

```
# wget -qO- https://get.docker.com/ | sh # If you don't have Docker installed yet
docker run --rm -v `pwd`:/code fjorgemota/epos make all
docker run --rm -v `pwd`:/code fjorgemota/epos make APPLICATION=philosophers_dinner run
```

In the last command, Docker will launch your program in QEmu, using the Makefile provided in the EPOS distribution. And that will work in **any Linux distribution** that Docker supports. :)
