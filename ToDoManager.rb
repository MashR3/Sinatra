class ToDoManager
  
  @@todos = ["Buy some almond milk", "Feed the dragon", "Do jazz hands"]
  
  def self.index 
    @@todos
  end
  
  def self.show id 
    @@todos[id]
  end
  
  def self.create new_todo 
    @@todos.push new_todo
    # @@todos << new_todo 
  end
  
  def self.delete cat 
    @@todos.delete_at cat
  end
  
  def self.update id, new_todo
    @@todos[id] = new_todo
  end
  
end