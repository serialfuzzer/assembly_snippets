# assembly_snippets

Code snippets and notes about Assembly language. 


# Why am I pushing it to Github?
- Pushing it to a public repository because this could be useful to someone on the same page.
- For my own personal reference

# How frequent will I update this?

My goal is to push something at least once a week for 9 Weeks. 

# Structure 

- NOTES:
    Contains notes for theoretical concepts

- REFERENCES:
    Contains references such as table of system calls, what a certain instruction does, etc

- SNIPPETS:
    Contains code for Assembly programs. You may read the comments to understand.

# Additional information

Most contents in this repository is taken from the book **Barlett - Programming from the Ground up**.

# How to compile?
`$ as source.s -o source.o --32 && ld -m elf_i386 source.o -o source.bin`