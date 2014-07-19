require 'travis'
Travis.github_auth('33c15eb96123c81b559af95a7c9374cce9a8daab')
#Travis.access_token = '33c15eb96123c81b559af95a7c9374cce9a8daab'
repository = Travis::Repository.find('anujdeshpande/railsad')
repository.each_build do |build|
  # restart all the builds
  build.restart
end
