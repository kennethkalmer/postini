module Postini

  # Parent class of our exception hierarchy
  class Error < ::StandardError
  end

  class DuplicateAddress < Error
  end

  class UnknownDomain < Error
  end

  # Raised if the #Postini library is not sufficiently configured.
  class NotConfigured < Error
  end
end
