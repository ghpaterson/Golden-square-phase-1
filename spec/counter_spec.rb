require 'counter'

# We use the class name here rather than a string
RSpec.describe Counter do
  it "adds to the counter" do
    counter = Counter.new()
    counter.add(0)
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "adds 5 to the counter" do
    counter = Counter.new()
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end
  # We would typically have a number of these examples.
end

