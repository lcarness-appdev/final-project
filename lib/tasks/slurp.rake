namespace :slurp do
  desc "TODO"
  task industries: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "industries.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Industry.new
      t.name = row["Name"]
      t.save
      puts "#{t.name} saved"
    end

  puts "There are now #{Industry.count} rows in the indutry table"
    
  end

end
