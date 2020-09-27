class User < ApplicationRecord
    has_many :skills
    has_one :rating

    include Elasticsearch::Model
    #include Elasticsearch::Model::Callbacks

    settings do
        mappings dynamic: false do
          indexes :id, type: :keyword
          indexes :name, type: :text
          indexes :email, index: false
          indexes :photo, index: false
          indexes :country, type: :text, analyzer: :english
          indexes :skills, type: :nested do
            indexes :name, type: :text
            indexes :description, type: :text
          end
          indexes :rating, type: :nested do
            indexes :value, type: :text
          end
        end
      end

      def as_indexed_json(_options = nil)
        as_json(
          only: [:name, :email, :country],
          include: {
            rating: {
              only: [:value]
            },
            skills: {
              only: [:name, :description]
            }
          }
        )
      end

      def self.search_query(query)
        search(
          query: {
              bool: {
                should: [
                    {
                        multi_match: {
                            query: query,
                            fuzziness: 'AUTO',
                            fields: %w[name country]
                        }
                    },
                    {
                        nested: {
                            path: 'rating',
                            query: {
                                multi_match: {
                                    query: query,
                                    fields: ['rating.value']
                                }
                            }
                        }
                    },
                    {
                        nested: {
                            path: 'skills',
                            query: {
                                multi_match: {
                                    query: query,
                                    fuzziness: 'AUTO',
                                    fields: %w[skills.name skills.description]
                                }
                            }
                        }
                    }
                ],           
             }        
          }
        )
      end

      def self.search_all 
        search(
          query: {
            match_all: {}
          },
          aggs: {
            unique_ids: {
                terms: {
                    field: "id"
                }
            }
          }
        )
      end

end
