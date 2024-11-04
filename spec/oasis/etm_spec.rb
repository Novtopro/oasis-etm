# frozen_string_literal: true

require "pathname"

RSpec.describe Oasis::Etm do
  context "with isosts/isosts_tables.cals.01.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.01.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.02.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.02.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.03.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.03.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.04.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.04.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.05.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.05.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.06.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.06.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.07.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.07.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.08.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.08.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.09.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.09.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.10.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.10.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.11.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.11.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with isosts/isosts_tables.cals.12.xml" do
    let(:fixture) { file_fixture("isosts/isosts_tables.cals.12.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with native/docbook_example.xml" do
    let(:fixture) { file_fixture("native/docbook_example.xml") }

    it_behaves_like "lossless round-trip converter"
  end

  context "with niso-jats/niso-jats-table-wrap.xml" do
    let(:fixture) { file_fixture("niso-jats/niso-jats-table-wrap.xml") }

    it_behaves_like "lossless round-trip converter"
  end
end
