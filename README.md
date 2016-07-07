#Simple file parsing ruby program usable via command line

##DEPENDENCIES
  This program requires that Ruby 1.9+ be installed. This program also requires the Thor gem. Type te below command to install.

        gem install thor

##USAGE
type the following in a command line

    cd DRECTORY_CONTAINING_SENTENCE_PARSER

where DRECTORY_CONTAINING_SENTENCE_PARSER is the location of sentence_parser.rb in your file system.
Next type in the following to execute the program

    ruby ./sentence_parser.rb parse PATH_TO_SOURCE_FILE
where PATH_TO_SOURCE_FILE is replaced with the file path to the file containing the sentences.


##Example output
This program outputs a txt file which will be formatted in the following fashion.

     I like dogs occurred 3 times
     I like cats occurred 2 times
     I like turtles occurred 2 times
     I like badgers occurred 1 times

