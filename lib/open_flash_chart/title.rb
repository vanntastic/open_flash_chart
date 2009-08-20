module OpenFlashChart

  class Title < Base
    # Examples :
    # 
    #   title = Title.new "My Title"
    # 
    # you can also pass in a block to use the set_style method to change the style of the title:
    # 
    #   title = Title.new "My Title" { |t| t.set_style "{font-size:10px}"}
    # 
    # OR : 
    # 
    #   title = Title.new "My Title"
    #   title.set_style "{font-size:10px}"
    # 
    
    def initialize(text='', args = {})
      super args
      @text = text      
    end
  end

end