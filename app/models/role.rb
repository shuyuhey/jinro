# -*- coding: utf-8 -*-
class Role
    class << self
      attr_accessor :role_name
    end
    self.role_name = "役職"

    def initialize name
      @name = name
      @state = 1
    end
    attr_reader :name, :state

    def werewolf?
    end

    def death
      @state = 0
    end

    def revive
      @state = 1
    end

    def night_action target
    end

end
