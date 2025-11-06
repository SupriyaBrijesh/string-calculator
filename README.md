# 🧮 String Calculator – TDD Kata (Ruby + RSpec)

## 📋 Overview
This project is a **Test-Driven Development (TDD)** implementation of the **String Calculator Kata**, written in **Ruby** using **RSpec**.  
It demonstrates a clean TDD workflow — starting from the simplest failing test and iteratively evolving into a complete solution with frequent commits, refactoring, and test coverage.

---

## 🧠 Problem Statement

Implement a simple string calculator with the following method:

```ruby
int add(string numbers)



🧪 TDD Workflow

Each test was written before implementation, and commits were made after every passing test.

Step	Commit Message	Description
1️⃣	Initialize Ruby project with RSpec	Added Gemfile and RSpec setup
2️⃣	Add test for empty string returning 0	First failing test
3️⃣	Add support for single number input	Simple base case
4️⃣	Handle addition of two numbers	Returns correct sum
5️⃣	Allow multiple numbers	Handles variable input
6️⃣	Add support for newlines as delimiters	1\n2,3 returns 6
7️⃣	Implement custom delimiter support	Example: //;\n1;2
8️⃣	Raise error for negative numbers	Handles invalid inputs
9️⃣	Show all negative numbers in exception	Improved validation
🔟	Support multi-character delimiters	Example: //[***]\n1***2***3



⚙️ Setup Instructions
1️⃣ Clone the repository
git clone https://github.com/<your-username>/string-calculator-tdd.git
cd string-calculator-tdd

2️⃣ Install dependencies

Make sure you have Ruby and Bundler installed.

bundle install

3️⃣ Run the test suite
bundle exec rspec


If everything is set up correctly, you should see output like this 👇

✅ Example RSpec Output
StringCalculator
  returns 0 for an empty string
  returns number for single input
  returns sum for two numbers
  handles multiple numbers
  allows newlines as delimiters
  supports custom delimiter
  raises error for negative numbers
  shows all negative numbers
  supports multi-character delimiters

Finished in 0.0123 seconds (files took 0.12456 seconds to load)
9 examples, 0 failures

📁 Screenshot folder structure:

string-calculator-tdd/
├── lib/
│   └── string_calculator.rb
├── spec/
│   └── string_calculator_spec.rb
├── screenshots/
│   ├── rspec_pass.png
│   ├── git_log.png
│   └── code_example.png
└── README.md

\

🧰 Tech Stack
Tool	
Ruby 3.x	
RSpec	: Unit testing framework
Bundler	: Dependency management
Git & GitHub	: Version control & repository hosting

🧩 Project Structure
string-calculator-tdd/
├── Gemfile
├── README.md
├── lib/
│   └── string_calculator.rb
├── spec/
│   ├── spec_helper.rb
│   └── string_calculator_spec.rb
└── screenshots/
    ├── rspec_pass.png
    ├── git_log.png
    └── code_example.png

👩‍💻 Author
Supriya A
Ruby on Rails Developer

