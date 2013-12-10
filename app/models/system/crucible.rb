class System::Crucible < System
  has_one :aider_system

  def config_ok?
    self.aider_system
  end
end