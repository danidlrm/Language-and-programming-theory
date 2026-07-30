# Language-and-programming-theory

This repository contains lexical analysis projects and exercises developed for the **Language Theory and Programming** course, using **Flex** (*Fast Lexical Analyzer Generator*).

The main goal is to design regular expressions and finite automata capable of tokenizing programming languages, counting text elements, and filtering comments or keywords.

---

## 🛠️ Prerequisites (macOS)

Before getting started, make sure you have **Xcode Command Line Tools** installed (to get the `clang++` C++ compiler) and an updated version of **Flex**.

## 1. install flex
brew install flex

## 2. Convert the .lex file to .cpp
flex -o lexer.cpp lexer.lex

## 3. Compile the generated C++ code
clang++ lexer.cpp -o executable

##4. Run the executable
./executable
**Redirecting an input text file:**
./executable < input.txt
