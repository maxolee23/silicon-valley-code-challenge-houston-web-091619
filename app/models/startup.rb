class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []


  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(name, domain)
    @name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    Startup.all.find {|i| i.founder == founder_name}
  end

  def self.domains
    all.map {|x| x.domain}
  end


end
