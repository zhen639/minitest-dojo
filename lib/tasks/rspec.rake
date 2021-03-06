namespace :rspec do
  desc 'run fizz buzz tests'
  task :fizz_buzz, :environment do
    RSpec::Core::RakeTask.new(:fizz_buzz) do |t|
      t.pattern = 'spec/fizz_buzz/*_spec.rb'
    end
    Rake::Task[:fizz_buzz].execute
  end

  desc 'run auto wrap tests'
  task :auto_wrap, :environment do
    RSpec::Core::RakeTask.new(:auto_wrap) do |t|
      t.pattern = 'spec/soft_return/*_spec.rb'
    end
    Rake::Task[:auto_wrap].execute
  end

  desc 'run numbers_to_words tests'
  task :numbers_to_words, :environment do
    RSpec::Core::RakeTask.new(:numbers_to_words) do |t|
      t.pattern = 'spec/numbers_to_words/*_spec.rb'
    end
    Rake::Task[:numbers_to_words].execute
  end

  desc 'run all tests'
  task all: [:fizz_buzz, :auto_wrap, :numbers_to_words]
end

desc 'run all tests'
task rspec: ['rspec:all']