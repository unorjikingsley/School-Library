class InputHandler
  def ask_for_parent_permission
    print 'Has parent permission? [Y/N]: '
    parent = gets.chomp.downcase
    %w[y yes].include?(parent)
  end

  def ask_for_specialization
    print 'Specialization: '
    gets.chomp
  end
end
