require_relative "tgroup"

module Oasis
  module Etm
    class Table < Lutaml::Model::Serializable
      # Table attributes
      attribute :frame, :string, values: %w[top bottom topbot all sides none]
      attribute :colsep, :string, values: ["0", "1", "yes", "no"]
      attribute :rowsep, :string, values: ["0", "1", "yes", "no"]
      attribute :pgwide, :string, values: ["0", "1", "yes", "no"]

      # Table content
      attribute :title, :string
      attribute :tgroups, Tgroup, collection: true

      xml do
        root "table", ordered: true
        namespace "-//OASIS//DTD XML Exchange Table Model 19990315//EN", "oasis"

        # Frame mappings
        map_attribute "frame", to: :frame
        map_attribute "colsep", to: :colsep
        map_attribute "rowsep", to: :rowsep
        map_attribute "pgwide", to: :pgwide

        # Content mappings
        map_element "title", to: :title
        map_element "tgroup", to: :tgroups
      end
    end
  end
end
