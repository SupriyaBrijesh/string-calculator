require_relative "../lib/string_calculator"

RSpec.describe "StringCalculator" do
  it "returns 0 for an empty string" do
    calc = StringCalculator.new
    expect(calc.add("")).to eq(0)
  end

  it "returns the number itself when single number is given" do
    calc = StringCalculator.new
    expect(calc.add("1")).to eq(1)
    expect(calc.add("47")).to eq(47)
  end

end
