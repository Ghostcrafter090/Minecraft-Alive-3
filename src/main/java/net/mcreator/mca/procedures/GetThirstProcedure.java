package net.mcreator.mca.procedures;

import net.minecraft.world.entity.Entity;

import net.mcreator.mca.network.McaModVariables;
import net.mcreator.mca.McaMod;

public class GetThirstProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		McaMod.LOGGER.info((new java.text.DecimalFormat("##.##")
				.format((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).DB)));
		McaMod.LOGGER.info((new java.text.DecimalFormat("##.##")
				.format((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).DT)));
	}
}
