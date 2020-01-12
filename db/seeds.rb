require 'csv'

# clear db before re-seeding
Code.destroy_all

def import_csv(csv_text, floor)
  csv = CSV.parse(csv_text, :headers => true)
  csv.each_with_index do |row|
    Code.create(date_string: row['Day'], code: row['Code'], floor: floor)
  end
end

import_csv(File.read(Rails.root.join('first.csv')), 'first')
import_csv(File.read(Rails.root.join('second.csv')), 'second')
