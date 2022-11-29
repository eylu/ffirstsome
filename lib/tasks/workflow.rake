namespace :workflow do
  desc 'record a workflow begin at'
  task generate_start: :environment do
    puts "====== start workflow ==> #{ENV}"
  end

  desc 'record a workflow end at'
  task generate_end: :environment do
    puts "====== start workflow ==> #{ENV}"
  end
end