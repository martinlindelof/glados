# glados.sh
A simple bash script to generate text-to-speech .wav files similar to GLaDOS from the game Portal.

# What is GLaDOS
GLaDOS (Genetic Lifeform and Disk Operating System). Female antagonist voice from the game Portal.

# How-to use my bourne-again shell script
1) Clone or download the repository

2 i) Rename glados.sh to only glados

2 ii) mv glados.sh glados

3 i) Make it a executable

3 ii) sudo chmod +x glados

4 i) Trial run

4 ii) ./glados

When running the shell script without arguments you're greeted with two inputs.

martin@xxxxx:~/Desktop$ ./glados 

Genetic Lifeform and Disk Operating System

phrase to speak : Hello Computer

output filename > hello_computer

The phrase to speak, type in what word or phrase you want.
And the output filename, no need to add filetype since it will be a .wav
by default from the service.

Try this method first to make sure it's working. Later on if you want
to compile a list of several words just make a text file and parse it as an argument
to the script

./glados my_list_of_words.txt

And glados.sh will parse each line in the text file and spit out a corresponding .wav file.

5 i) Finalizing, making it a command that you can run anywhere
5 ii) sudo mv glados /usr/local/bin

Now when you have the glados file in /usr/local/bin/glados you can run the glados command
anywhere in a bash shell and create a text-to-speech .wav file at that directory. Enjoy.
