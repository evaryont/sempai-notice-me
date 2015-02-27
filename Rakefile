desc 'build elm files'
task :build do
  sh 'elm-make Notice.elm --output=compiled.html'
end

task :pages do
  parent_repo = Dir.pwd
  mkdir_p 'pages'
  cd 'pages'
  sh "git clone #{parent_repo} ."
  sh 'git checkout origin/gh-pages -b gh-pages'
end
