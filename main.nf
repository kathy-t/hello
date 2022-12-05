#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

nextflow.enable.dsl = 2

process sayHello {
  echo true
  input: 
    val x from cheers
  when:
    1 == 1
  script:
    """
    echo '$x world!'
    """
}

