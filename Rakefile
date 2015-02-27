@pages_dir = 'pages'

desc 'build elm files'
task :build do
  sh 'elm-make src/Notice.elm --output=pages/index.html'
end

desc 'make a directory for easy access to gh-pages'
task :pages do
  parent_repo = Dir.pwd
  mkdir_p @pages_dir
  cd @pages_dir
  sh "git clone #{parent_repo} ."
  sh 'git checkout origin/gh-pages -b gh-pages'
end

desc 'basic static file server'
task :server do
  require 'rack'

  puts "Open http://localhost:3000/index.html to see"
        
  app = Rack::Builder.new
  app.run Rack::Directory.new(File.join(Dir.pwd, @pages_dir))
  Rack::Server.start :app => app, :Port => 3000
end

desc 'build & commit latest elm stuff'
task :push => :build do
  parent_repo = Dir.pwd
  cd @pages_dir
  sh 'git add *'
  sh 'git commit -m "Update compiled version from Elm"'
end
