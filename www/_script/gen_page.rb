#!/usr/bin/env ruby
# vim:set fileencoding=utf-8:

def front_matter file_name
  front_matter= <<-EOF
  ---
  layout: page
  title: #{file_name}
  permalink: /#{file_name}/
  ---
  EOF

  front_matter
end

ARGV.each do |file_name|
  File.write("#{file_name}.md", front_matter(file_name))
end
