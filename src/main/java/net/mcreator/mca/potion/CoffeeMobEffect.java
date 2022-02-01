
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class CoffeeMobEffect extends MobEffect {
	public CoffeeMobEffect() {
		super(MobEffectCategory.BENEFICIAL, -10079488);
		setRegistryName("coffee");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.coffee";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
