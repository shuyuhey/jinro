# -*- coding: utf-8 -*-
class WereWolf < Role
  self.role_name = "人狼"

  def werewolf?
    return true
  end

  def night_action target
    target.death
  end
end
