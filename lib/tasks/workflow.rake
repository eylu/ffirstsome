namespace :workflow do
  desc 'record a workflow begin at'
  task generate_start: :environment do
    pipeline_id = ENV['pipeline_id']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== start workflow ==> #{pipeline_id} , #{branch}, #{time}"
    puts "存入数据库..."
  end

  desc 'record a workflow end at'
  task generate_end: :environment do
    pipeline_id = ENV['pipeline_id']
    branch = ENV['branch']
    time = Time.zone.now
    puts "根据 pipeline_id 取出数据"
    puts "====== end workflow ==> #{pipeline_id} , #{branch}, #{time}"
  end
end