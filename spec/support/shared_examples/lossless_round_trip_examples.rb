RSpec.shared_examples "lossless round-trip converter" do
  it "performs lossless round-trip conversion" do
    input = fixture.read

    serialized = Oasis::Etm::Table.from_xml(input)
    output = serialized.to_xml(pretty: true, declaration: true, encoding: "utf-8")

    File.write("output.xml", output)
    File.write("input.xml", input)

    expect(output).to be_analogous_with(input)
  end
end
