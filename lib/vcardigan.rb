require_relative 'vcardigan/version'
require_relative 'vcardigan/vcard'
require_relative 'vcardigan/property'
require_relative 'vcardigan/properties/name_property'
require_relative 'vcardigan/errors'

module VCardigan

  class << self

    def create(*args)
      VCardigan::VCard.new(*args)
    end

    def parse(*args)
      VCardigan::VCard.new.parse(*args, strict: false)
    end

    def parse!(*args)
      VCardigan::VCard.new.parse(*args, strict: true)
    end

    def parse_all!(io, skip_invalid: false, &block)
      VCardigan::VCard.parse_all(io, skip_invalid: skip_invalid, &block)
    end

  end

end
