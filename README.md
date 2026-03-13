# Ruby Foundations

A structured, six-week Ruby curriculum progressing from core syntax fundamentals to interactive game development. Each week builds on the last, introducing new concepts through hands-on exercises and mini-projects.

---

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Curriculum](#curriculum)
  - [Week 1 – Basics](#week-1--basics)
  - [Week 2 – Conditionals](#week-2--conditionals)
  - [Week 3 – Logic & Methods](#week-3--logic--methods)
  - [Week 4 – Loops & Arrays](#week-4--loops--arrays)
  - [Week 5 – Games & Algorithms](#week-5--games--algorithms)
  - [Week 6 – Final Project](#week-6--final-project)
- [Concepts Covered](#concepts-covered)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This repository contains 31 Ruby scripts organized into 6 weekly modules. The curriculum is designed for beginners and follows a clear progression:

| Week | Theme | Files | Key Focus |
|------|-------|-------|-----------|
| 1 | Basics | 4 | I/O, variables, type conversion |
| 2 | Conditionals | 8 | Control flow, methods, classes |
| 3 | Logic & Methods | 5 | Logical reasoning, problem-solving |
| 4 | Loops & Arrays | 8 | Iteration, collections, blocks |
| 5 | Games & Algorithms | 5 | Algorithms, interactive programs |
| 6 | Final Project | 1 | Full program integrating all concepts |

---

## Prerequisites

Ruby must be installed on your system. Verify with:

```bash
ruby -v
```

If Ruby is not installed, download it from [ruby-lang.org](https://www.ruby-lang.org/en/downloads/) or use a version manager like [rbenv](https://github.com/rbenv/rbenv) or [RVM](https://rvm.io/).

---

## Getting Started

Clone the repository:

```bash
git clone https://github.com/paulezennolim/Ruby-Foundations.git
cd Ruby-Foundations
```

Run any script by navigating to its directory and executing it with Ruby:

```bash
ruby week-01-basics/Calculator.rb
```

Or run from the repo root using the relative path:

```bash
ruby week-05-games/GuessingGame.rb
```

---

## Curriculum

### Week 1 – Basics

> **Focus:** Output, user input, arithmetic, and type conversion.

| File | Description |
|------|-------------|
| `Printing.rb` | String output, concatenation, interpolation, and `.reverse` |
| `Input.rb` | Reading user input with `gets.chomp` and greeting with interpolation |
| `Calculator.rb` | Dynamic expression evaluation using `eval()` |
| `Age.rb` | Age calculation using `Time` class and `.to_i` type conversion |

**Concepts introduced:** `puts`, `print`, `gets.chomp`, string interpolation `#{}`, `.reverse`, `.to_i`, `Time.now.year`, `eval()`

---

### Week 2 – Conditionals

> **Focus:** Branching logic, method definition, and object-oriented basics.

| File | Description |
|------|-------------|
| `Boolean.rb` | String length comparison using `if/else` |
| `IfConditions.rb` | Basic `if/else` branching with comparison operators |
| `ElsifBranches.rb` | Multi-way branching with `if/elsif/else` chains |
| `LogicalOperators.rb` | Compound conditions using `&&` and `\|\|` |
| `DefiningMethods.rb` | Defining and calling simple methods with `def` |
| `MethodArguments.rb` | Methods accepting multiple parameters |
| `ReturnValues.rb` | Explicit `return` statements and `.upcase` |
| `TextAdventure.rb` | Class-based text adventure with `case` statements and `send()` |

**Concepts introduced:** `if/elsif/else`, comparison operators, `&&`/`||`, `def`, parameters, `return`, `class`, `self.`, `case/when`, `send()`

**Highlight — `TextAdventure.rb`:** A multi-room text adventure game. The player navigates between locations, collecting a sword and armour to win. Demonstrates class definition, class methods, state tracking with boolean flags, recursive navigation, and dynamic method dispatch with `send()`.

---

### Week 3 – Logic & Methods

> **Focus:** Applying logical reasoning to real-world problems.

| File | Description |
|------|-------------|
| `EvenOrOdd.rb` | Detects even or odd numbers using the modulo operator `%` |
| `LeapYear.rb` | Implements the full leap year algorithm with compound conditions |
| `MaximumOfThree.rb` | Finds the largest of three numbers using nested ternary operators |
| `ProfitOrLoss.rb` | Calculates profit or loss with `.to_f` and absolute value handling |
| `USVotingSystem.rb` | Validates voting eligibility by age and processes vote choices |

**Concepts introduced:** Modulo `%`, ternary operator `? :`, `.to_f`, `||` for complex logic, boolean-returning methods, `downcase`

---

### Week 4 – Loops & Arrays

> **Focus:** All loop constructs, loop control, and working with collections.

| File | Description |
|------|-------------|
| `ForLoop.rb` | `for` loop over a range, filtering even numbers |
| `loopsInRuby.rb` | `while` loop with a countdown |
| `WhileLoopVariations.rb` | `begin...end until` post-test loop pattern |
| `ExitingLoops.rb` | Infinite `loop do` terminated with `break` |
| `SkippingLoopIterations.rb` | Using `next` to skip iterations conditionally |
| `IterationsAndBlocks.rb` | `.each` blocks, nested iteration, multiplication table |
| `Arrays.rb` | Array creation, `.each`, `.each_with_index`, element assignment |
| `ABasicBot.rb` | Interactive chatbot using file I/O and random response selection |

**Concepts introduced:** `for`, `while`, `begin...end until`, `loop do`, `break`, `next`, `.each`, `.each_with_index`, `<<` (append), `.sample`, `File.readlines()`, `rand()`

**Highlight — `ABasicBot.rb`:** A simple interactive bot that loads responses from a file, validates commands, picks replies at random, and requires the user to type "exit" three times consecutively to quit — demonstrating state tracking, file I/O, and input validation.

---

### Week 5 – Games & Algorithms

> **Focus:** Algorithmic thinking, 2D data structures, and interactive programs.

| File | Description |
|------|-------------|
| `2DAsciiArt.rb` | Generates ASCII art using 2D arrays, `.fill`, and `.chr` |
| `FizzBuzz.rb` | Classic FizzBuzz over a range using modulo |
| `GuessingGame.rb` | Number guessing game with attempt counter and history tracking |
| `PrimeNumber.rb` | Generates the first 50 prime numbers algorithmically |
| `ReverseInput.rb` | Collects user lines until "END", then prints them reversed |

**Concepts introduced:** 2D arrays, `.fill`, ASCII codes and `.chr`, `rand(range)`, `until`, `.positive?`, `<<` for building arrays, `.reverse`

**Highlight — `GuessingGame.rb`:** The player guesses a random number between 1–100. The game tracks every attempt in a history array, provides high/low feedback, and reports total attempts on a correct guess.

**Highlight — `PrimeNumber.rb`:** Uses an optimised approach — checking each candidate only against previously confirmed primes — to generate the first 50 primes without a brute-force divisibility check.

---

### Week 6 – Final Project

> **Focus:** Integrating all concepts into one complete, polished program.

| File | Description |
|------|-------------|
| `WordGuessingGame.rb` | Full hangman-style word guessing game |

**`WordGuessingGame.rb` features:**
- Constant definition (`ATTEMPTS = 9`)
- Random word selection from a predefined list
- Underscore placeholder display updated on correct guesses
- Case-insensitive character comparison
- Attempt tracking with win/loss conditions
- Replay loop asking the player if they want to play again
- Helper functions: `is_solved()`, `output()`, `update_and_check()`, `game_loop()`

```
Word: _ _ _ _ _ _ _
Guess a letter: e
Word: _ e _ _ _ _ _
Attempts remaining: 8
```

---

## Concepts Covered

| Category | Concepts |
|----------|---------|
| **Output & Input** | `puts`, `print`, `gets.chomp`, string interpolation |
| **Types & Conversion** | `String`, `Integer`, `Float`, `.to_i`, `.to_f`, `.to_s` |
| **String Methods** | `.length`, `.reverse`, `.upcase`, `.downcase`, `.chomp` |
| **Operators** | Arithmetic, comparison, `&&`, `\|\|`, `%`, ternary `? :` |
| **Control Flow** | `if/elsif/else`, `case/when` |
| **Methods** | Definition (`def`), parameters, return values |
| **Classes** | `class`, `self.` class methods, instance state |
| **Loops** | `for`, `while`, `begin...end until`, `loop do` |
| **Loop Control** | `break`, `next` |
| **Blocks & Iterators** | `.each`, `.each_with_index`, `.times`, ranges `..`/`...` |
| **Arrays** | Initialization, access, `<<`, `.sample`, `.reverse`, `.fill` |
| **2D Arrays** | Nested arrays, grid operations |
| **File I/O** | `File.readlines()` |
| **Randomness** | `rand()`, `rand(range)`, `.sample` |
| **Misc** | `eval()`, `send()`, `Time.now`, `.chr`, `.positive?` |

---

## Contributing

Contributions, improvements, and suggestions are welcome.

1. Fork the repository
2. Create a feature branch: `git checkout -b my-feature`
3. Commit your changes: `git commit -m 'Add my feature'`
4. Push the branch: `git push origin my-feature`
5. Open a pull request

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
