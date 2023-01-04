module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :articles,[Types::ArticleType], null: false 
    field :article, Types::ArticleType, null: false do
    argument :id, ID, required: true
    end

    def articles
      Article.all
    end

    def article(id:)
      Article.find(id)
    end
  end
end
