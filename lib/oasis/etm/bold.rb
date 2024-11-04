# frozen_string_literal: true

module Oasis
  module Etm
    class Bold < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :toggle, :string

      xml do
        root "bold", mixed: true

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "toggle", to: :toggle
      end
    end
  end
end
