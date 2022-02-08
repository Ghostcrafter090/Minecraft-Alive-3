package net.mcreator.mca.procedures;

import net.minecraft.world.entity.Entity;

import net.mcreator.mca.network.McaModVariables;

public class SetStaminaGuiCommandExecutedProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		if (((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).outStr)
				.equals("stamina")) {
			{
				String _setval = "stamina_l";
				entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.outStr = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
		} else {
			{
				String _setval = "stamina";
				entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
					capability.outStr = _setval;
					capability.syncPlayerVariables(entity);
				});
			}
		}
	}
}
