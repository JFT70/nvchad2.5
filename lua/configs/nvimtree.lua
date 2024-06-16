return {
  actions = {
    open_file = {
      resize_window = false
    }
  },
  filters = {
    custom = {
      'node_modules',  -- ignores all node_modules directories
      '^.git$',        -- ignores .git directory
      -- '*.lock',        -- ignores all files ending with .lock
      '__pycache__',   -- ignores __pycache__ directories 
    }
  }
}
