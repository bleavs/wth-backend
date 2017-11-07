class RunSerializer < ActiveModel::Serializer
  attributes *Run.column_names

  


end
