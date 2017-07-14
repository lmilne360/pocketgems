class GemService
attr_accessor :name, :info, :url, :dependencies
  def initialize(data)
    set_attributes(data)
    set_dependencies(data)
  end


  def set_attributes(data)
    @name = data['name']
    @info = data['info']
    @url = data['project_uri']
  end

  def set_dependencies(data)
    @dependencies = []
    data['dependencies']['development'].each do |dep|
      depenency = { name: dep['name'], url: "https://rubygems.org/gems/#{dep['name']}"}
      @dependencies << depenency
    end

    data['dependencies']['runtime'].each do |dep|
      depenency = { name: dep['name'], url: "https://rubygems.org/gems/#{dep['name']}"}
      @dependencies << depenency
    end

  end

  def create_gem
   GemModel.new(self.name, self.url, self.info, self.dependencies)
  end

end
