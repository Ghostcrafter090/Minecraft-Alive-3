
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.mca.init;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.RegistryEvent;

import net.minecraft.world.item.alchemy.Potion;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.effect.MobEffectInstance;

import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModPotions {
	private static final List<Potion> REGISTRY = new ArrayList<>();
	public static final Potion IMMUNAL_BOOST_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.IMMUNE_BOOST, 3600, 0, false, true),
					new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 400, 0, false, true),
					new MobEffectInstance(MobEffects.HEALTH_BOOST, 300, 0, false, true)).setRegistryName("immunal_boost_medicine"));
	public static final Potion SIGHT_BOOST_MEDICINE = register(new Potion(new MobEffectInstance(McaModMobEffects.SIGHT_INDUCER, 1200, 0, false, true),
			new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0, false, true), new MobEffectInstance(MobEffects.BLINDNESS, 100, 0, false, true))
					.setRegistryName("sight_boost_medicine"));
	public static final Potion APPETITE_BOOST_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.APPETITE_INDUCER, 3600, 1, false, true),
					new MobEffectInstance(MobEffects.SATURATION, 500, 0, false, false)).setRegistryName("appetite_boost_medicine"));
	public static final Potion BOTTLE_OF_COFFEE = register(new Potion(new MobEffectInstance(McaModMobEffects.COFFEE, 1800, 0, false, true),
			new MobEffectInstance(MobEffects.MOVEMENT_SPEED, 900, 2, false, false),
			new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 1800, 0, false, false),
			new MobEffectInstance(MobEffects.DIG_SPEED, 900, 2, false, false), new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 1800, 0, false, false),
			new MobEffectInstance(MobEffects.DAMAGE_BOOST, 900, 2, false, false), new MobEffectInstance(MobEffects.WEAKNESS, 1800, 0, false, false))
					.setRegistryName("bottle_of_coffee"));
	public static final Potion ANTI_INFLAMITORY_MEDICINE_BOTTLE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.ANTI_INFLAMITORY_MEDICINE, 1800, 1, false, true))
					.setRegistryName("anti_inflamitory_medicine_bottle"));
	public static final Potion ANTI_NAUSEA_MEDICATION = register(new Potion(new MobEffectInstance(McaModMobEffects.ANTI_NAUSEA, 1800, 1, false, true),
			new MobEffectInstance(MobEffects.SATURATION, 300, 0, false, false), new MobEffectInstance(MobEffects.POISON, 40, 0, false, false))
					.setRegistryName("anti_nausea_medication"));
	public static final Potion ANTIDOTAL_MEDICINE = register(new Potion(new MobEffectInstance(McaModMobEffects.ANTIDOTE, 1800, 1, false, true),
			new MobEffectInstance(MobEffects.REGENERATION, 800, 0, false, false)).setRegistryName("antidotal_medicine"));
	public static final Potion ANTI_CARCINOGENAL_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.ANTI_CARCINOGEN, 1800, 1, false, true),
					new MobEffectInstance(MobEffects.REGENERATION, 800, 0, false, false),
					new MobEffectInstance(MobEffects.SATURATION, 100, 0, false, false)).setRegistryName("anti_carcinogenal_medicine"));
	public static final Potion IMMUNAL_BOOST_MEDICATION_2 = register(
			new Potion(new MobEffectInstance(McaModMobEffects.IMMUNE_BOOST, 3600, 1, false, true),
					new MobEffectInstance(MobEffects.DAMAGE_RESISTANCE, 400, 1, false, false),
					new MobEffectInstance(MobEffects.HEALTH_BOOST, 300, 1, false, false)).setRegistryName("immunal_boost_medication_2"));
	public static final Potion SIGHT_BOOST_MEDICINE_2 = register(
			new Potion(new MobEffectInstance(McaModMobEffects.SIGHT_INDUCER, 1800, 1, false, true),
					new MobEffectInstance(MobEffects.NIGHT_VISION, 200, 0, false, true),
					new MobEffectInstance(MobEffects.BLINDNESS, 50, 0, false, false)).setRegistryName("sight_boost_medicine_2"));
	public static final Potion SIGHT_BOOST_MEDICINE_3 = register(
			new Potion(new MobEffectInstance(McaModMobEffects.SIGHT_INDUCER, 2400, 2, false, true),
					new MobEffectInstance(MobEffects.NIGHT_VISION, 300, 0, false, false),
					new MobEffectInstance(MobEffects.BLINDNESS, 25, 0, false, false)).setRegistryName("sight_boost_medicine_3"));
	public static final Potion WEAK_ANTI_INFLAMITORY_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.ANTI_INFLAMITORY_MEDICINE, 1800, 0, false, true),
					new MobEffectInstance(MobEffects.DIG_SLOWDOWN, 100, 0, false, true),
					new MobEffectInstance(MobEffects.MOVEMENT_SLOWDOWN, 120, 0, false, true),
					new MobEffectInstance(MobEffects.WEAKNESS, 140, 0, false, true)).setRegistryName("weak_anti_inflamitory_medicine"));
	public static final Potion WEAK_ANTI_NAUSEA_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.ANTI_NAUSEA, 1800, 0, false, true),
					new MobEffectInstance(MobEffects.SATURATION, 200, 0, false, true), new MobEffectInstance(MobEffects.POISON, 60, 0, false, true))
							.setRegistryName("weak_anti_nausea_medicine"));
	public static final Potion WEAK_ANTIDOTAL_MEDICINE = register(new Potion(new MobEffectInstance(McaModMobEffects.ANTIDOTE, 1200, 0, false, true),
			new MobEffectInstance(MobEffects.REGENERATION, 400, 0, false, true), new MobEffectInstance(MobEffects.BLINDNESS, 20, 0, false, true))
					.setRegistryName("weak_antidotal_medicine"));
	public static final Potion WEAK_ANTI_CARCINOGENAL_MEDICATION = register(
			new Potion(new MobEffectInstance(McaModMobEffects.ANTI_CARCINOGEN, 800, 0, false, true),
					new MobEffectInstance(MobEffects.REGENERATION, 100, 0, false, true),
					new MobEffectInstance(MobEffects.SATURATION, 50, 0, false, false)).setRegistryName("weak_anti_carcinogenal_medication"));
	public static final Potion WEAKK_APPETITE_BOOST_MEDICINE = register(
			new Potion(new MobEffectInstance(McaModMobEffects.APPETITE_INDUCER, 3600, 0, false, true),
					new MobEffectInstance(MobEffects.SATURATION, 400, 0, false, true)).setRegistryName("weakk_appetite_boost_medicine"));

	private static Potion register(Potion potion) {
		REGISTRY.add(potion);
		return potion;
	}

	@SubscribeEvent
	public static void registerPotions(RegistryEvent.Register<Potion> event) {
		event.getRegistry().registerAll(REGISTRY.toArray(new Potion[0]));
	}
}
