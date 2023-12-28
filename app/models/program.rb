class Program < ApplicationRecord
  has_many :days
  belongs_to :user

  def tag_list
    count = 0
    tag_array = []
    while count < days.length
      day = days[count]
      count2 = 0
      while count2 < day.exercises.length
        exercise = day.exercises[count2]
        count3 = 0
        while count3 < exercise.tags.length
          tag_array << exercise.tags[count3]
          count3 += 1
        end
        count2 += 1
      end
      count += 1
    end
    filtered_array = tag_array.reject { |item| item["name"] == "Compound" || item["name"] == "Accessory" || item["name"] == "Upper Body" || item["name"] == "Lower Body" }
    return filtered_array.uniq
  end
end
