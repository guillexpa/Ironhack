class Task
  
  attr_reader :content, :id, :created_at
  @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
    @status = false
    @created_at = Date.today
    @updated_at = nil
  end

  def complete?
    @status
  end

  def complete!
    @status = true
  end

  def update_content!(newcontent)
    @updated_at = Date.today
    @content = newcontent
  end
end
