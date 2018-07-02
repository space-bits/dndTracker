require 'rails_helper'

RSpec.describe Weapon, type: :model do
  fixtures :melee_weapons, :ranged_weapons

  it "is invalid without a name" do
    w = melee_weapons(:axe)
    w.name = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a superclass" do
    w = melee_weapons(:axe)
    w.superclass = nil
    expect(w).to_not be_valid
  end

  it "is valid if superclass is melee" do
    w = melee_weapons(:axe)
    w.superclass = ranged_weapon
    expect(w).to_not be_valid
  end

  it "is valid if superclass is ranged" do
    w = ranged_weapons(:bow)
    w.superclass = ranged_weapon
    expect(w).to_not be_valid
  end

  it "is invalid without a class" do
    w = melee_weapons(:axe)
    w.class = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a damage value" do
    w = melee_weapons(:axe)
    w.damage = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a damage type" do
    w = melee_weapons(:axe)
    w.damage_type = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a range" do
    w = melee_weapons(:axe)
    w.range = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a weight" do
    w = melee_weapons(:axe)
    w.weight_lbs = nil
    expect(w).to_not be_valid
  end

  it "is invalid without properties" do
    w = melee_weapons(:axe)
    w.properties = nil
    expect(w).to_not be_valid
  end

  it "is invalid without silvered" do
    w = melee_weapons(:axe)
    w.silvered = nil
    expect(w).to_not be_valid
  end

  it "is invalid without a cost" do
    w = melee_weapons(:axe)
    w.cost = nil
    expect(w).to_not be_valid
  end

end
