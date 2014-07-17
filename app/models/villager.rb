# -*- coding: utf-8 -*-
class Villager < Role
  self.role_name = "村人"

  def werewolf?
    return false
  end
end
