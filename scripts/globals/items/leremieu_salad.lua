-----------------------------------------
-- ID: 5185
-- Item: leremieu_salad
-- Food Effect: 240Min, All Races
-----------------------------------------
-- Health 20
-- Magic 20
-- Dexterity 4
-- Agility 4
-- Vitality 6
-- Charisma 4
-- Defense % 25
-- Defense Cap 160
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 14400, 5185)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.HP, 20)
    target:addMod(tpz.mod.MP, 20)
    target:addMod(tpz.mod.DEX, 4)
    target:addMod(tpz.mod.AGI, 4)
    target:addMod(tpz.mod.VIT, 6)
    target:addMod(tpz.mod.CHR, 4)
    target:addMod(tpz.mod.FOOD_DEFP, 25)
    target:addMod(tpz.mod.FOOD_DEF_CAP, 160)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.HP, 20)
    target:delMod(tpz.mod.MP, 20)
    target:delMod(tpz.mod.DEX, 4)
    target:delMod(tpz.mod.AGI, 4)
    target:delMod(tpz.mod.VIT, 6)
    target:delMod(tpz.mod.CHR, 4)
    target:delMod(tpz.mod.FOOD_DEFP, 25)
    target:delMod(tpz.mod.FOOD_DEF_CAP, 160)
end
