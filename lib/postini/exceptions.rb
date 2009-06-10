module Postini
  class Error < ::StandardError
  end

  class DuplicateAddress < Error
  end

  class UnknownDomain < Error
  end
end
