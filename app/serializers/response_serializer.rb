class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :prompt_id, :response, :complete
end
