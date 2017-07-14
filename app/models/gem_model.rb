class GemModel
    attr_reader :name, :url, :info, :dependencies

    def initialize(name, url, info, dependencies)
        @name = name
        @url = url
        @info = info
        @dependencies = dependencies
    end

end
