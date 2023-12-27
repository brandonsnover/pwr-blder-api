  json.id day.id
  json.name day.name
  json.program_id day.program_id
  json.created_at day.created_at
  json.updated_at day.updated_at

  json.exercises day.exercises do |exercise|
    json.(exercise, :id, :name, :volume, :short_description, :long_description, :img_url, :created_at, :updated_at)
    
      json.tags exercise.tags do |tag|
        json.(tag, :id, :name)
      end
  end