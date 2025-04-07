class Media
    attr_reader :comments
  
    def initialize
      @comments = []
    end
  
    def add_comment(comment)
      @comments.push(comment)
    end
  
    def play
      puts "Playing..."
    end
  end
  
  class Video < Media
    attr_accessor :resolution
  
    def initialize(resolution)
      super()
      @resolution = resolution
    end
  end
  
  class Music < Media
    attr_accessor :bpm
  
    def initialize(bpm)
      super()
      @bpm = bpm
    end
  end
  
  video = Video.new("1080p")
  music = Music.new(120)
  
  video.add_comment("Nice video!")
  music.add_comment("Great beat!")
  
  puts "Video Comments: #{video.comments}"
  puts "Music Comments: #{music.comments}"
  