#!/usr/bin/env ruby

require "erb"
require "ostruct"

$stdout = STDERR

unless ARGV[0]
  puts "    Usage: serb template.erb"
  exit 1
end

class SerbLocals < OpenStruct
  def get_binding
    binding
  end

  def method_missing(name, *args, &block)
    super
    return define_variable(name) if args.empty?
  end

  private

  def define_variable(var)
    print "Define \"#{var}\": "
    return gets.chomp
  end
end

locals = SerbLocals.new
template = ERB.new(IO.read(ARGV.pop))
result = template.result(locals.get_binding)

$stdout = STDOUT
puts result

