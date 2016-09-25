EPOS, or Embedded Parallel Operating System, is a operating system made in Federal University of Santa Catarina (UFSC) and can run actually in a big range of devices.

This container aims to simplify the development of EPOS applications by providing a Ubuntu Trusty container with all the dependencies you should need to run EPOS 1 applications, based on IA32 architecture.

## How to use

Well..to execute a docker container you first need that Docker was installed and running in your computer. In a Linux computer, you can install it just by running:

```
wget -qO- https://get.docker.com/ | sh
```

Given the EPOS code is in the current directory, you can compile and run that EPOS application by using just two commands:

```
docker run --rm -v `pwd`:/code fjorgemota/epos make all
docker run --rm -v `pwd`:/code fjorgemota/epos make APPLICATION=philosophers_dinner run
```

In the last command, Docker will launch your program in QEmu, using the Makefile provided in the EPOS distribution. And that will work in **any Linux distribution** that Docker supports. :)
