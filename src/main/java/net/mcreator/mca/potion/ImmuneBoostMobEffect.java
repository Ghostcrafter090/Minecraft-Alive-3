
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class ImmuneBoostMobEffect extends MobEffect {
	public ImmuneBoostMobEffect() {
		super(MobEffectCategory.HARMFUL, -3407770);
		setRegistryName("immune_boost");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.immune_boost";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
