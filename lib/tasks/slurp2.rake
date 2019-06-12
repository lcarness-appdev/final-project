namespace :slurp2 do
  desc "TODO"
  task countries: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "countries.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Country.new
      t.country = row["Name"]
      t.save
      puts "#{t.country} saved"
    end

  puts "There are now #{Country.count} rows in the country table"
    
  end

end
