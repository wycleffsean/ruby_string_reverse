require 'rspec/core/rake_task'

task :default => [:spec, :benchmark]

task :compile do
  Dir.glob(File.dirname(__FILE__) + '/**/extconf.rb')
    .map {|conf| File.dirname(conf) }
    .each {|dir| `cd #{dir} && ruby extconf.rb && make` }
end

RSpec::Core::RakeTask.new(:spec => :compile)

task :benchmark => [:compile] do
  require 'benchmark'
  require_relative 'lib/string_reverse'

  THOREAU = <<-WALDEN
  I went to the woods because I wished to live deliberately,
  to front only the essential facts of life, and see if I could
  not learn what it had to teach, and not, when I came to die,
  discover that I had not lived.
  WALDEN

  n = 100_000
  Benchmark.bm do |x|
    x.report('String#reverse') { n.times { THOREAU.reverse }}
    x.report('String#seans_xor_swap') { n.times { THOREAU.seans_xor_swap }}
    x.report('String#keith_reverse') { n.times { THOREAU.keith_reverse }}
    x.report('String#keith_reverse2') { n.times { THOREAU.keith_reverse2 }}
    x.report('String#zach_recruse_reverse') { n.times { THOREAU.zachs_recurse_reverse }}
    x.report('String#seans_slow_reverse') { n.times { THOREAU.seans_slow_reverse }}
  end
end
