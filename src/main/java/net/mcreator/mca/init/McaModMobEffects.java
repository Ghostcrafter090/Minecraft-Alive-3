
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.mca.init;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.RegistryEvent;

import net.minecraft.world.effect.MobEffect;

import net.mcreator.mca.potion.SightInducerMobEffect;
import net.mcreator.mca.potion.ImmuneBoostMobEffect;
import net.mcreator.mca.potion.CoffeeMobEffect;
import net.mcreator.mca.potion.AppetiteInducerMobEffect;
import net.mcreator.mca.potion.AntidoteMobEffect;
import net.mcreator.mca.potion.AntiNauseaMobEffect;
import net.mcreator.mca.potion.AntiInflamitoryMedicineMobEffect;
import net.mcreator.mca.potion.AntiCarcinogenMobEffect;

import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModMobEffects {
	private static final List<MobEffect> REGISTRY = new ArrayList<>();
	public static final MobEffect IMMUNE_BOOST = register(new ImmuneBoostMobEffect());
	public static final MobEffect SIGHT_INDUCER = register(new SightInducerMobEffect());
	public static final MobEffect APPETITE_INDUCER = register(new AppetiteInducerMobEffect());
	public static final MobEffect COFFEE = register(new CoffeeMobEffect());
	public static final MobEffect ANTI_INFLAMITORY_MEDICINE = register(new AntiInflamitoryMedicineMobEffect());
	public static final MobEffect ANTI_NAUSEA = register(new AntiNauseaMobEffect());
	public static final MobEffect ANTIDOTE = register(new AntidoteMobEffect());
	public static final MobEffect ANTI_CARCINOGEN = register(new AntiCarcinogenMobEffect());

	private static MobEffect register(MobEffect effect) {
		REGISTRY.add(effect);
		return effect;
	}

	@SubscribeEvent
	public static void registerMobEffects(RegistryEvent.Register<MobEffect> event) {
		event.getRegistry().registerAll(REGISTRY.toArray(new MobEffect[0]));
	}
}
