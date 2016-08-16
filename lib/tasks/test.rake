namespace :test do
  desc 'run fizz buzz tests'
  task :fizz_buzz, :environment do
    Rake::TestTask.new(:fizz_buzz) do |t|
      t.test_files = FileList['test/fizz_buzz/*_test.rb']
    end
    Rake::Task[:fizz_buzz].execute
  end

  desc 'run auto wrap tests'
  task :auto_wrap, :environment do
    Rake::TestTask.new(:auto_wrap) do |t|
      t.test_files = FileList['test/soft_return/*_test.rb']
    end
    Rake::Task[:auto_wrap].execute
  end

  desc 'run numbers to words tests'
  task :numbers_to_words, :environment do
    Rake::TestTask.new(:numbers_to_words) do |t|
      t.test_files = FileList['test/numbers_to_words/*_test.rb']
    end
    Rake::Task[:numbers_to_words].execute
  end
end