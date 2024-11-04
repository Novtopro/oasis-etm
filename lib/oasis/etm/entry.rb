require_relative "xref"
require_relative "bold"

module Oasis
  module Etm
    class Entry < Lutaml::Model::Serializable
      # Optional attributes
      attribute :colname, :string
      attribute :namest, :string
      attribute :nameend, :string
      attribute :morerows, :integer
      attribute :colsep, :string, values: ["0", "1", "yes", "no"]
      attribute :rowsep, :string, values: ["0", "1", "yes", "no"]
      attribute :align, :string, values: %w[left right center justify char]
      attribute :char, :string
      attribute :charoff, :string
      attribute :valign, :string, values: %w[top middle bottom]

      # Content
      attribute :content, :string, raw: true
      attribute :xref, Xref, collection: true
      attribute :bold, Bold, collection: true

      xml do
        root "entry"
        namespace "http://docs.oasis-open.org/ns/oasis-exchange/table", "oasis"
        namespace "-//OASIS//DTD XML Exchange Table Model 19990315//EN", "oasis"

        # Attribute mappings
        map_attribute "colname", to: :colname
        map_attribute "namest", to: :namest
        map_attribute "nameend", to: :nameend
        map_attribute "morerows", to: :morerows
        map_attribute "colsep", to: :colsep
        map_attribute "rowsep", to: :rowsep
        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "valign", to: :valign

        # Content mapping
        map_content to: :content

        # Child elements
        map_element "xref", to: :xref
        map_element "bold", to: :bold
      end
    end
  end
end
