
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class AntidoteMobEffect extends MobEffect {
	public AntidoteMobEffect() {
		super(MobEffectCategory.BENEFICIAL, -65281);
		setRegistryName("antidote");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.antidote";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
