# -*- coding: utf-8 -*-
require 'rails_helper'

RSpec.describe Villager, :type => :model do
  describe "役職名のテスト" do
    it "役職名：村人" do
      expect(Villager.role_name).to eq("村人")
    end
  end
  describe "オブジェクト生成とパラメータ" do
    before do
      @player = Villager.new("Shuhei")
    end
    it "名前が正しくセットされる" do
      expect @player.name == "Shuhei"
    end
    it "汝は人狼なりや？" do
      expect( @player.werewolf? ).to eq(false)
    end
  end
end
