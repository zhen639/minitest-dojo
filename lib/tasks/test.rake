namespace :test do
  desc 'run fizz buzz tests'
  task :fizz_buzz, :environment do
    Rake::TestTask.new(:fizz_buzz) do |t|
      t.test_files = FileList['test/fizz_buzz/*_test.rb']
    end
    Rake::Task[:fizz_buzz].execute
  end
end