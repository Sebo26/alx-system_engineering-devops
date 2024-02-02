#!/usr/bin/env ruby
puts ARGV[0].scan(/[from:(\A\+?\d{11}\z|[a-zA-Z])]/,/[to:\A\+?\d{11}\z|[a-zA-Z]]/,/[flags:(-1|0)]/).join
