class PromptSerializer < ActiveModel::Serializer
  attributes :id, :title, :header, :body, :category, :responses
end
