
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class AntiNauseaMobEffect extends MobEffect {
	public AntiNauseaMobEffect() {
		super(MobEffectCategory.BENEFICIAL, -6724096);
		setRegistryName("anti_nausea");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.anti_nausea";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
