rdocs = Dir.glob 'rdoc/*.rdoc'

rdocs.each do |rdoc|
  lines = File.readlines rdoc
  lines.shift
  fout = File.open rdoc, 'w'
  lines.each do |line|
    fout.puts line.sub(/^\#\s/, '')
  end
  fout.close
end