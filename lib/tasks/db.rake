require 'csv'

namespace :db do
  desc "TODO"
  task :upload_csv, [:csv_path, :model] => :environment do |task,args|
    puts "This is the file path #{args.csv_path}"
    csv_text = File.read("#{args.csv_path}")
    begin 
      csv = CSV.parse(csv_text, :headers => true)
    rescue ArgumentError
      csv_text = File.read("#{args.csv_path}", encoding: 'ISO-8859-1')
      csv = CSV.parse(csv_text, :headers => true)
    end
    csv.each do |row|
      puts row
      args.model.constantize.create!(row.to_hash)
    end
  end

end
