
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class AppetiteInducerMobEffect extends MobEffect {
	public AppetiteInducerMobEffect() {
		super(MobEffectCategory.HARMFUL, -39424);
		setRegistryName("appetite_inducer");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.appetite_inducer";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
