namespace :test do
  desc 'run fizz buzz tests'
  task :fizz_buzz do
    RSpec::Core::RakeTask.new(:fizz_buzz) do |t|
      t.pattern = 'spec/fizz_buzz/*_spec.rb'
    end
    Rake::Task[:fizz_buzz].execute
  end

  desc 'run auto wrap tests'
  task :auto_wrap do
    RSpec::Core::RakeTask.new(:auto_wrap) do |t|
      t.pattern = 'spec/soft_return/*_spec.rb'
    end
    Rake::Task[:auto_wrap].execute
  end
end