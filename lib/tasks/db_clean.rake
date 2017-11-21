namespace :db do
  desc "Clear database models"
  task clear: :environment do |_env|
    if Rails.env == "development"
      Rails.application.eager_load!
      ApplicationRecord.descendants.each do |model|
        model.delete_all
        puts "DB Clear: Completed .delete_all on #{model.name} model."
      end
    else
      puts "DB Clear: *** DO NOT RUN THIS IN PRODUCTION*** "
    end
  end
end
