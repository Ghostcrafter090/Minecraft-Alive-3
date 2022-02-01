
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class SightInducerMobEffect extends MobEffect {
	public SightInducerMobEffect() {
		super(MobEffectCategory.HARMFUL, -16724737);
		setRegistryName("sight_inducer");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.sight_inducer";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
