module Persistence
  module Relations
    class Urls < ROM::Relation[:sql]
      schema(:urls, infer: true)

      def by_key(key)
        where(key: key)
      end
    end
  end
end
