class RunSerializer < ActiveModel::Serializer
  attributes *Run.column_names, :users




end
