require_relative "../lib/string_calculator"

RSpec.describe "StringCalculator" do
  it "returns 0 for an empty string" do
    calc = StringCalculator.new
    expect(calc.add("")).to eq(0)
  end

  # One number returns itself
  it "returns the number itself when single number is given" do
    calc = StringCalculator.new
    expect(calc.add("1")).to eq(1)
    expect(calc.add("47")).to eq(47)
  end

  # to support Two comma-separated numbers
  it "returns sum of two comma-separated numbers" do
    calc = StringCalculator.new
    expect(calc.add("9,0")).to eq(9)
  end

  # to suppport any amount of numbers
  it "handles any amount of comma-separated numbers" do
    calc = StringCalculator.new
    expect(calc.add("1,2,3,4,5")).to eq(15)
  end

  # handles newline b/w numbers
  it "handles newlines between numbers" do
    calc = StringCalculator.new
    expect(calc.add("1\n2,3")).to eq(6)
  end

  # custom delimiter //;n1;2
  it "supports custom delimiter syntax like //;\n1;2" do
    calc = StringCalculator.new
    expect(calc.add("//;\n1;2")).to eq(3)
  end

  it "raises error for negative numbers" do
    calc = StringCalculator.new
    expect { calc.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
  end

  # Multiple negatives listed
  it "lists all negative numbers in the error message" do
    calc = StringCalculator.new
    expect { calc.add("-1,-5,-7") }
      .to raise_error("negative numbers not allowed: -1,-5,-7")
  end




end
