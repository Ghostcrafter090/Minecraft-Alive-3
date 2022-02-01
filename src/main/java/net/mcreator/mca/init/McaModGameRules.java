
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.mca.init;

import net.minecraftforge.fml.common.Mod;

import net.minecraft.world.level.GameRules;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModGameRules {
	public static final GameRules.Key<GameRules.BooleanValue> LOGMCADEBUG = GameRules.register("logMcaDebug", GameRules.Category.CHAT,
			GameRules.BooleanValue.create(false));
}
