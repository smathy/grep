class Dir
  def grep(re)
    res = []

    require 'find'
    Find.find(path) do |f|
      if File.file? f
        File.open(f) do |io|
          res += io.grep(re)
        end
      end
    end
    res
  end
end

class File
  def grep(re)
    res = []
    each_line do |line|
      if m = line.match(re)
        res << { :match => m, :file => path, :lineno => $., :line => line }
      end
    end
    res
  end
end
