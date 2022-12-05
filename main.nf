#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Holaa'

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

