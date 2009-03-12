require "test/unit"

DIR = File.dirname(__FILE__)
require File.join(DIR, '..', 'lib', 'grep')

T = File.join( DIR, 'data')

class Grep < Test::Unit::TestCase
  def setup
    @dir = Dir.open(T)
  end

  def test_dir_grep
    m = @dir.grep(/foobar/)
    assert_equal 2, m.size
    assert_equal 4, m.find{|e|e[:file] == './test/data/first.txt'}[:lineno]
    assert_equal 3, m.find{|e|e[:file] == './test/data/third/first.txt'}[:lineno]
  end

end
