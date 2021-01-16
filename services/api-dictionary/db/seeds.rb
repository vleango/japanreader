Dir.glob("#{Rails.root}/db/seeds/jdict/*.sql").each do |file|

  puts "Seeding #{file} > db (#{Rails.env})"
  puts '*' * 50

  connection = ActiveRecord::Base.connection
  sql = File.read(file)
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each{|statement| connection.execute(statement) }
  end

end
