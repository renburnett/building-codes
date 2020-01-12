require 'csv'

# clear db before re-seeding
Code.destroy_all

Code.import_csv(File.read(Rails.root.join('first.csv')), 'first')
Code.import_csv(File.read(Rails.root.join('second.csv')), 'second')
