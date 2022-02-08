package net.mcreator.mca.procedures;

import net.minecraft.world.entity.Entity;
import net.minecraft.world.damagesource.DamageSource;

import net.mcreator.mca.network.McaModVariables;

public class FdfdfsdsdfProcedure {
	public static void execute(Entity entity) {
		if (entity == null)
			return;
		entity.hurt(DamageSource.GENERIC, (float) (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null)
				.orElse(new McaModVariables.PlayerVariables())).thMain);
		{
			double _setval = 0;
			entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
				capability.thMain = _setval;
				capability.syncPlayerVariables(entity);
			});
		}
	}
}
