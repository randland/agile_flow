require 'slop'

class AgileFlow::Runner < AgileFlow #:nodoc:
  attr_reader :argv

  def self.extract_args(argv)
    @opts = Slop.parse do
      banner "Usage: agile [options]"
      opt :h, :help, 'Show this message'
      opt :n, :name, 'Greetings and Salutations!', :optional => true
      opt :version, 'Print the version'
      opt :v, :verbose, 'Verbose output'
    end
  end

  def self.run(argv)
    extract_args(argv)

    unless opts[:help]

      if opts[:name]
        say_hi
      end

      if opts[:version]
        version
      end

      if opts[:verbose]
        verbose
      end

    else
      help
    end
  end

  def self.opts
    @opts || {}
  end

  def self.help
    puts opts.help
  end

  def self.say_hi
    puts "Hi, #{opts[:name]}!"
  end

  def self.verbose
    puts opts.to_hash
  end

  def self.version
    puts "Agile Flow v.#{AgileFlow.version}"
  end

end
