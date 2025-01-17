require_relative "row"

module Oasis
  module Etm
    class Tbody < Lutaml::Model::Serializable
      # Optional attributes
      attribute :valign, :string, values: %w[top middle bottom]

      # Content
      attribute :rows, Row, collection: true

      xml do
        root "tbody"

        map_attribute "valign", to: :valign
        map_element "row", to: :rows
      end
    end
  end
end
