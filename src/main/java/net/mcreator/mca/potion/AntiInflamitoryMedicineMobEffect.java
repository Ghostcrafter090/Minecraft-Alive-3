
package net.mcreator.mca.potion;

import net.minecraft.world.effect.MobEffectCategory;
import net.minecraft.world.effect.MobEffect;

public class AntiInflamitoryMedicineMobEffect extends MobEffect {
	public AntiInflamitoryMedicineMobEffect() {
		super(MobEffectCategory.BENEFICIAL, -10092493);
		setRegistryName("anti_inflamitory_medicine");
	}

	@Override
	public String getDescriptionId() {
		return "effect.mca.anti_inflamitory_medicine";
	}

	@Override
	public boolean isDurationEffectTick(int duration, int amplifier) {
		return true;
	}
}
