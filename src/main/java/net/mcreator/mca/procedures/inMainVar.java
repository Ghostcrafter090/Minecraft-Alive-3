package net.mcreator.mca.procedures;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.client.Minecraft;
import net.minecraft.world.entity.player.Player;

import net.mcreator.mca.network.McaModVariables;

public class inMainVar {
	public static void set(double val) {
		Player entity = Minecraft.getInstance().player;
		if (entity == null)
			return;
			double _setval = 0;
			entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.inMain = _setval;
				capability.syncPlayerVariables(entity);
			});
		}

	public static double get() {
		Player entity = Minecraft.getInstance().player;
		return (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).inMain;
	}
}
