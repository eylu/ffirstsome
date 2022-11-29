namespace :workflow do
  desc 'record a workflow begin at'
  task generate_start: :environment do
    workflow_id = ENV['workflow_id']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== start workflow ==> #{workflow_id} , #{branch}, #{time}"
    puts "存入数据库..."
  end

  desc 'record a workflow end at'
  task generate_end: :environment do
    workflow_id = ENV['workflow_id']
    branch = ENV['branch']
    time = Time.zone.now
    puts "根据 workflow_id 取出数据"
    puts "====== end workflow ==> #{workflow_id} , #{branch}, #{time}"
  end
end