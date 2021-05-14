task start: :environment do
  exec 'foreman start -f Procfile.dev'
end
