module Atlassian
  module Crucible
    module CodeView
      def create_review
        "/cru/rest-service/reviews-v1"
      end

      def add_changeset(reviewId)
        "/cru/rest-service/reviews-v1/#{reviewId}/addChangeset"
      end

    end
  end
end