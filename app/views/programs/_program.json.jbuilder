json.id program.id
json.name program.name
json.tag_list program.tag_list
json.created_at program.created_at
json.updated_at program.updated_at

json.days program.days do |day|
  json.(day, :id, :name, :created_at, :updated_at)

  json.exercises day.exercises do |exercise|
    json.(exercise, :id, :name, :volume, :short_description, :long_description, :img_url, :created_at, :updated_at)

    json.tags exercise.tags do |tag|
      json.(tag, :id, :name)
    end
  end
end
