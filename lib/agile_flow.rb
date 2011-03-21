class AgileFlow
  autoload :Runner, 'agile_flow/runner'

  def self.version
    File.read(File.expand_path('../../VERSION', __FILE__))
  end
end
