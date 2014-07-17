# -*- coding: utf-8 -*-
class Seer < Villager
  self.role_name = "占い師"

  def night_action target
    return target.werewolf?
  end
end
