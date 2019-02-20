module JqueryQueryBuilder
  module Operators
    class NotContains
      def evaluate(left, right)
        return false if left.nil?
        !left.include?(right)
      end
    end
  end
end
