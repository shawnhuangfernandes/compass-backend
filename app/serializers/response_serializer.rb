class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :prompt_id, :body, :complete
end
