module Tookan
  class Error < StandardError; end
  class ParameterMissing < Error; end
  class InvalidKey < Error; end
  class ShowErrorMessage < Error; end
  class ErrorInExecution < Error; end
end
