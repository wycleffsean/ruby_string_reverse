require 'rake/extensiontask'

Rake::ExtensionTask.new 'string_reverse' do |ext|
  ext.lib_dir = 'lib/string_reverse'
end

task 'benchmark' do
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
    x.report('String#slow_reverse') { n.times { THOREAU.slow_reverse }}
    x.report('String#keith_reverse') { n.times { THOREAU.keith_reverse }}
    x.report('String#keith_reverse2') { n.times { THOREAU.keith_reverse2 }}
  end
end
