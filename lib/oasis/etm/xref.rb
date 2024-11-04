module Oasis
  module Etm
    class Xref < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :alt, :string
      attribute :custom_type, :string
      attribute :id, :string
      attribute :ref_type, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "xref"
        namespace "http://docs.oasis-open.org/ns/oasis-exchange/table", "oasis"
        namespace "-//OASIS//DTD XML Exchange Table Model 19990315//EN", "oasis"

        map_content to: :content
        map_attribute "alt", to: :alt
        map_attribute "custom-type", to: :custom_type
        map_attribute "id", to: :id
        map_attribute "ref-type", to: :ref_type
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
