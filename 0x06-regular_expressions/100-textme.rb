#!/usr/bin/env ruby
puts ARGV[0].scan(/(\A\+?\d{11}\z|[a-zA-Z]),\A\+?\d{11}\z|[a-zA-Z],(-1|0)/).join
