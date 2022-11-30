namespace :workflow do
  # circleci
  # bundle exec rake workflow:generate_circleci_start workflow_key=abcd-efg-hijklmn-opqrst branch=issue-123456
  desc 'record a workflow begin at'
  task generate_circleci_start: :environment do
    workflow_key = ENV['workflow_key']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== circleci start workflow ==> #{workflow_key} , #{branch}, #{time}"
    data = {
      platform: 'circleci',
      project_name: 'feedmob_xxx',
      branch: branch,
      workflow_key: workflow_key,
      start_at: time,
      status: 'inprogress'
    }
    post_data(data)
  end

  # circleci
  # bundle exec rake workflow:generate_circleci_end workflow_key=abcd-efg-hijklmn-opqrst branch=issue-123456
  desc 'record a workflow end at'
  task generate_circleci_end: :environment do
    workflow_key = ENV['workflow_key']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== circleci end workflow ==> #{workflow_key} , #{branch}, #{time}"
    data = {
      platform: 'circleci',
      project_name: 'feedmob_xxx',
      branch: branch,
      workflow_key: workflow_key,
      end_at: time,
      status: 'success'
    }
    post_data(data)
  end

  # github
  # bundle exec rake workflow:generate_github_start workflow_key=654987456456 branch=issue-456789
  desc 'record a workflow begin at for github'
  task generate_github_start: :environment do
    workflow_key = ENV['workflow_key']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== github start workflow ==> #{workflow_key} , #{branch}, #{time}"
    data = {
      platform: 'github',
      project_name: 'feedmob_xxx',
      branch: branch,
      workflow_key: workflow_key,
      start_at: time,
      status: 'inprogress'
    }
    post_data(data)
  end

  # github
  # bundle exec rake workflow:generate_github_end workflow_key=654987456456 branch=issue-456789
  desc 'record a workflow end at for github'
  task generate_github_end: :environment do
    workflow_key = ENV['workflow_key']
    branch = ENV['branch']
    time = Time.zone.now
    puts "====== github end workflow ==> feedmob_xxx, #{workflow_key} , #{branch}, #{time}"
    data = {
      platform: 'github',
      project_name: 'feedmob_xxx',
      branch: branch,
      workflow_key: workflow_key,
      end_at: time,
      status: 'success'
    }
    post_data(data)
  end

  def post_data(data)
    HTTParty.post('http://localhost:3000/api/ci', body: JSON.generate(data), headers: { 'Content-Type' => 'application/json' })
  end
end