# -*- coding: utf-8 -*-
require 'rails_helper'

RSpec.describe WereWolf, :type => :model do
  describe "役職名の参照" do
    it "役職名の参照" do
      expect(WereWolf.role_name).to eq("人狼")
    end
  end
  describe "オブジェクトの生成とパラメータ" do
    before do
      @player = WereWolf.new("Shuhei")
    end
    it "オブジェクトの生成" do
      expect @player.name == "Shuhei"
    end
    it "汝は人狼なりや？" do
      expect( @player.werewolf? ).to eq(true)
    end
  end
  describe "夜の行動のテスト" do
    before do
      @player = WereWolf.new("Shuhei")
      @target = Villager.new("Takasugi")
    end
    it "村人を襲って，村人が死んでいる" do
      expect(@target.state).to eq(1)
      @player.night_action(@target)
      expect(@target.state).to eq(0)
    end
  end
end
