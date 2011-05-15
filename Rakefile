desc "remove built gems"
task :clean do
  sh "rm serb-*" rescue true
end

desc "build gem"
task :build do
  sh "gem build serb.gemspec"
end

desc "install gem"
task :install => [:clean, :build] do
  sh "sudo gem install `ls serb-*`"
end

