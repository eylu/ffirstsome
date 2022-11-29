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
    puts "根据 workflow_id 取出数据。 ok"
    puts "====== end workflow ==> #{workflow_id} , #{branch}, #{time}"
  end

  desc 'record a workflow begin at for github'
  task generate_github_start: :environment do
    workflow_id = ENV['workflow_id']
    branch = ENV['branch']
    workflow_run_number = ENV['workflow_run_number']
    time = Time.zone.now
    puts "====== github start workflow ==> #{workflow_id} , #{branch}, #{workflow_run_number}, #{time}"
    puts "存入数据库..."
  end

  desc 'record a workflow end at for github'
  task generate_github_end: :environment do
    workflow_id = ENV['workflow_id']
    branch = ENV['branch']
    workflow_run_number = ENV['workflow_run_number']
    time = Time.zone.now
    puts "根据 workflow_id 取出数据。 ok"
    puts "====== github end workflow ==> #{workflow_id} , #{branch}, #{workflow_run_number}, #{time}"
  end
end