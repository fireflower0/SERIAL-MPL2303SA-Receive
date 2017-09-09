# SERIAL-MPL2303SA-Receive

I made serial communication using Raspberry Pi and Common Lisp (SBCL).  
The serial module used is as follows.  
[Ultra compact USB serial module](https://www.marutsu.co.jp/pc/i/137791/)  

## Description

RaspberryPi side receives the serial data transmitted from the personal computer and outputs it as standard.

## Circuit diagram

![CircuitDiagram](https://github.com/fireflower0/SERIAL-MPL2303SA-Receive/blob/master/img/serial-mpl2303sa-circuit.png)  

## DEMO

Raspberry Pi  
![Demo1](https://github.com/fireflower0/SERIAL-MPL2303SA-Receive/blob/master/img/serial-mpl2303sa-02.png)    

## Requirement

- Common LIsp (SBCL)

## Usage

Execute it with the following command.  
Note: Quicklisp is required to run.

    $ sbcl --load serial-mpl2303sa-receive.lisp

Please open "send-data.ttl" in "Tera Term" and send the data to RaspberryPi.

## Installation

    $ git clone https://github.com/fireflower0/SERIAL-MPL2303SA-Receive.git

## Author

[fireflower0](https://twitter.com/fireflower0)

## License

[MIT](https://choosealicense.com/licenses/mit/)
