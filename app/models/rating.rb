class Rating < ApplicationRecord
    include Elasticsearch::Model
    #include Elasticsearch::Model::Callbacks

end
