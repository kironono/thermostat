namespace :thermostat do
  desc "create organization"
  task :create_organization, [:name] => :environment do |task, args|
    o = Organization.new(name: args.name)
    o.save!
  end
end
