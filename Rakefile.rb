($:.unshift File.expand_path(File.join( File.dirname(__FILE__), 'lib' ))).uniq!
begin 
  require 'tunnelr'
rescue LoadError
  module TunnelR; Version = -1; end
end

# =======================
# = Gem packaging tasks =
# =======================
begin
  require 'echoe'
  
  task :package => :'package:package'
  task :install => :'package:install'
  task :manifest => :'package:manifest'
  namespace :package do
    Echoe.new('tunnelr', TunnelR::Version) do |g|; g.name = 'tunnelr'
      g.project = 'tunnelr'
      g.author = ['elliottcable']
      g.email = ['tunnelr@elliottcable.com']
      g.summary = "Making SSH tunnels easy since… about thirty minutes ago, or so"
      g.url = 'http://github.com/elliottcable/tunnelr'
      g.development_dependencies = ['elliottcable-echoe >= 3.0.2', 'rspec', 'rcov', 'yard', 'stringray']
      g.manifest_name = '.manifest' # I don't want this showing up <,<
      g.retain_gemspec = true # perfect for GitHub
      g.rakefile_name = 'Rakefile.rb' # It's a Ruby file, why not have .rb?
      g.ignore_pattern = /^\.git\/|\.gemspec/
    end
  
    desc 'tests packaged files to ensure they are all present'
    task :verify => :package do
      # An error message will be displayed if files are missing
      if system %(ruby -e "require 'rubygems'; require 'pkg/tunnelr-#{TunnelR::Version}/lib/tunnelr'")
        puts "\nThe library files are present"
      end
    end
  end
  
rescue LoadError
  desc 'You need the `elliottcable-echoe` gem to package tunnelr'
  task :package
end
