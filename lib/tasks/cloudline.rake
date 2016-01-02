namespace :cloudline do

  desc 'Checks sites'
  task check_sites: :environment do
    #Sites.where('next_check < ?', Date.today).each do |site|
    Site.all.each do |site|
        CheckProcess.new(site)
    end
  end

end
