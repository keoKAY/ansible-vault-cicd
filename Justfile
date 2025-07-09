#!/bin/bash
up: 
    cd machine-one && vagrant up 
    cd machine-two && vagrant up
     
down: 
    cd machine-one && vagrant halt 
    cd machine-two && vagrant  halt
destroy: 
    cd machine-one && vagrant destroy -f 
    cd machine-two && vagrant destroy -f  
reload-one: 
    cd machine-one && vagrant reload 
reload-two: 
    cd machine-two && vagrant reload 