shared_examples_for "a string reverse method" do
  it "works when empty" do
    expect {string_reverse[""]}.to_not raise_error
    expect(string_reverse[""]).to eq ""
  end

  it "reverses string" do
    str = "The quick brown fox"
    expect(string_reverse[str]).to eq str.reverse
  end
end
