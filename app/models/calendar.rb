class Calendar < ApplicationRecord
=begin
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
=end

  belongs_to :teacher
end
