# -*- coding: utf-8 -*-
require 'rails_helper'

describe Role do
  describe "役職のパラメータ" do
    it "役職名が正常に表示される" do
      expect(Role.role_name).to eq("役職")
    end
    it "プレイヤーの名前を登録できる" do
      @player = Role.new(:name => "Shuhei")
      expect @player.name == "Shuhei"
      expect @player.state == 1
    end
    it "プレイヤーが死んだ時，値が正常にセットされる" do
      @player = Role.new(:name => "Shuhei")
      @player.death
      expect @player.state == 0
    end
    it "プレイヤー名と，ステートがセット不可能" do
      @player = Role.new(:name => "Shuhei")
      expect(lambda {@player.name = "temp"}).to raise_error
      expect(lambda {@player.state = "temp"}).to raise_error
    end

    it "対象役職の効果で死なない（生き返る）" do
      @player = Role.new(:name => "Shuhei")
      @player.death
      @player.revive
      expect @player.state == 1
    end
  end
end
