Use serb to interactively generate an output file from an erb template.

template.txt.erb

    Hello, <%= name %>

Usage

    $ serb template.txt.erb > template.txt
    Define "name": Daniel

    $ cat template.txt
    Hello, Daniel

