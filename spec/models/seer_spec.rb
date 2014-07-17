# -*- coding: utf-8 -*-
require 'rails_helper'

RSpec.describe Seer, :type => :model do
  describe "役職名のテスト" do
    it "役職名が占い師と表示される" do
      expect(Seer.role_name).to eq("占い師")
    end
  end
  describe "オブジェクト生成とパラメータ" do
    before do
      @player = Seer.new("Shuhei")
    end
    it "オブジェクト生成ができる" do
      expect( @player.name ).to eq("Shuhei")
    end
    it "汝は人狼なりや " do
      expect( @player.werewolf? ).to eq(false)
    end
  end
  describe "夜の行動のテスト" do
    before do
      @player = Seer.new("Shuhei")
      @target_vi = Villager.new("Villager")
      @target_wo = WereWolf.new("WereWolf")
    end
    it "村人を占って，村人と出る" do
      expect( @player.night_action(@target_vi) ).to eq(false)
    end
    it "人狼を占って，人狼と出る" do
      expect( @player.night_action(@target_wo) ).to eq(true)
    end
  end
end
