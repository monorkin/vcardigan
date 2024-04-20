module VCardigan
  class Error < StandardError
    class << self
      attr_accessor :default_message
    end

    def initialize(message = nil)
      super(message || self.class.default_message)
    end
  end

  class EncodingError < Error; end

  class MissingEndError < EncodingError
    self.default_message = "vCards must end with an END:VCARD line"
  end

  class MissingVersionError < EncodingError
    self.default_message = "vCards must include a VERSION field"
  end

  class MissingFullNameError < EncodingError
    self.default_message = "vCards must include an FN field"
  end

  class UnexpectedBeginError < EncodingError
    self.default_message = "vCard has more than one BEGIN:VCARD line"
  end
end
