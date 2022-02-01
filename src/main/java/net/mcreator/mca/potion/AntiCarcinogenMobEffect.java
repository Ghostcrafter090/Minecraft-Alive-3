
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class AntiCarcinogenMobEffect extends MobEffect {
	public AntiCarcinogenMobEffect() {
		super(MobEffectCategory.BENEFICIAL, -16711936);
		setRegistryName("anti_carcinogen");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.anti_carcinogen";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
