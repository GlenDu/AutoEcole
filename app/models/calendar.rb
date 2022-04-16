class Calendar < ApplicationRecord
  start_date = Date.today
  end_date = start_date +31
  Hash time_slots:
    {
      :monday=>[],
      :twesday=>[],
      :wednesday=>[],
      :thursday=>[],
      :friday=>[],
      :saturday=>[]
    }

  belongs_to :teacher
end
