# x86 Assembly Programs

Welcome to the x86 Assembly Programs repository! This collection features various assembly language programs written for the x86 architecture. Each program demonstrates different algorithms and techniques in low-level programming. Below is an outline of the folders and the algorithms they contain.

## Table of Contents

- [Folder 1: Arithmetic Operations](#folder-1-arithmetic-operations)
- [Folder 2:  Mathematical Expressions](#folder-3-sorting-algorithms)
- [Folder 3: String Manipulation](#folder-2-string-manipulation)
- [Folder 4: Sorting Algorithms](#folder-3-sorting-algorithms)


## Folder Descriptions

### Folder 1: Arithmetic Operations

This folder contains programs related to basic arithmetic operations.

- **[Square Elements](arithmetic_operations/squareElements.asm)**
  - **Algorithm:** Squares each element in an array.
  - **Description:** Demonstrates how to manipulate and operate on arrays using arithmetic operations.
    
### Folder 2: Mathematical Expressions

This folder contains programs that deal with mathematical expressions and patterns.

- **[Pascal's Triangle](mathematical_expressions/pascalTriangle.asm)**
  - **Algorithm:** Generates Pascal's Triangle.
  - **Description:** Demonstrates how to compute and display Pascal's Triangle using assembly language


### Folder 3: String Manipulation

This folder contains programs that manipulate strings and perform text operations.

- **[NumOfWords_Characters_Lines.asm](string_manipulation/NumOfWords_Characters_Lines.asm)**
  - **Description:** Program to count the number of words, characters, and lines in a given text.

- **[isItVowels.inc](string_manipulation/isItVowels.inc)**
  - **Description:** Stores the first 10 vowels in a string. 

- **[numberOfVowels.asm](string_manipulation/numberOfVowels.asm)**
  - **Description:** Counts the number of vowels in a given text. 

- **[readingOnlyVowels.asm](string_manipulation/readingOnlyVowels.asm)**
  - **Description:** Reads and processes only the vowel characters from a text.

- **[searchForCharacter.asm](string_manipulation/searchForCharacter.asm)**
  - **Description:** Searches for a specific character in a string.

- **[storeFirst10Vowels.asm](string_manipulation/storeFirst10Vowels.asm)**
  - **Description:** Stores the first 10 vowels in a string. 

- **[toLowerCase.asm](string_manipulation/toLowerCase.asm)**
  - **Description:** Converts all characters in a string to lowercase. 

### Folder 4: Sorting Algorithms

This folder contains programs that implement various sorting algorithms.

- **[Bubble Sort](sorting_algorithms/bubble_sort.asm)**
  - **Algorithm:** Implements the bubble sort algorithm.
  - **Description:** Demonstrates sorting techniques using nested loops and comparisons.


## How to Run

1. Clone the repository:
    ```bash
    git clone https://github.com/Mohammed-Azab/x86-Assembly-Programs.git
    cd x86-Assembly-Programs
    ```

2. Assemble and link the program:
    ```bash
    nasm -f elf32 program_name.asm -o program_name.o
    ld -m elf_i386 -s -o program_name program_name.o
    ```

3. Run the executable:
    ```bash
    ./program_name
    ```

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Feel free to explore, modify, and contribute to these programs. Happy coding!
