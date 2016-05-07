module Diaspora
  module Federation
    # @deprecated
    def self.xml(entity)
      DiasporaFederation::Salmon::XmlPayload.pack(entity)
    end

    # Raised, if author is ignored by the relayable parent author
    class AuthorIgnored < RuntimeError
    end

    # Raised, if the author of the existing object doesn't match the received author
    class InvalidAuthor < RuntimeError
    end
  end
end

require "diaspora/federation/entities"
require "diaspora/federation/receive"
