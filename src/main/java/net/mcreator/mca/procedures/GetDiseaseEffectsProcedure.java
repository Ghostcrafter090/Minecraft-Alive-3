package net.mcreator.mca.procedures;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.Event;
import net.minecraftforge.event.TickEvent;

import net.minecraft.world.scores.Scoreboard;
import net.minecraft.world.scores.Score;
import net.minecraft.world.scores.Objective;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;

import net.mcreator.mca.network.McaModVariables;

import javax.annotation.Nullable;

@Mod.EventBusSubscriber
public class GetDiseaseEffectsProcedure {
	@SubscribeEvent
	public static void onPlayerTick(TickEvent.PlayerTickEvent event) {
		if (event.phase == TickEvent.Phase.END) {
			Entity entity = event.player;
			execute(event, entity);
		}
	}

	public static double[][] effectList = {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}};

	public static void execute(Entity entity) {
		execute(null, entity);
	}

	public static double getScore(Entity entity, String strScore) {
		double _setval = new Object() {
				public int getScoref(String score, Entity _ent) {
					if (_ent instanceof Player _player) {
						Scoreboard _sc = _player.getScoreboard();
						Objective _so = _sc.getObjective(score);
						if (_so != null) {
							Score _scr = _sc.getOrCreatePlayerScore(_player.getScoreboardName(), _so);
							return _scr.getScore();
						}
					}
					return 0;
				}
			}.getScoref(strScore, entity);
		return _setval;
	}

	public void setVal(Entity entity, double _setval) {
		entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).ifPresent(capability -> {
			capability.disBool = _setval;
			capability.syncPlayerVariables(entity);
		});
	}

	private static void execute(@Nullable Event event, Entity entity) {
		if (entity == null)
			return;
		effectList[0][0] = getScore(entity, "blin_boolean");
		effectList[0][1] = getScore(entity, "blin_minact_tier");
		effectList[0][2] = getScore(entity, "blin_max_tier");
		effectList[1][0] = getScore(entity, "hung_boolean");
		effectList[1][1] = getScore(entity, "hung_minact_tier");
		effectList[1][2] = getScore(entity, "hung_max_tier");
		effectList[2][0] = getScore(entity, "nau_boolean");
		effectList[2][1] = getScore(entity, "nau_minact_tier");
		effectList[2][2] = getScore(entity, "nau_max_tier");
		effectList[3][0] = getScore(entity, "slow_boolean");
		effectList[3][1] = getScore(entity, "slow_minact_tier");
		effectList[3][2] = getScore(entity, "slow_max_tier");
		effectList[4][0] = getScore(entity, "weak_boolean");
		effectList[4][1] = getScore(entity, "weak_minact_tier");
		effectList[4][2] = getScore(entity, "weak_max_tier");
		effectList[5][0] = getScore(entity, "minf_boolean");
		effectList[5][1] = getScore(entity, "minf_minact_tier");
		effectList[5][2] = getScore(entity, "minf_max_tier");
		effectList[6][0] = getScore(entity, "poi_boolean");
		effectList[6][1] = getScore(entity, "poi_minact_tier");
		effectList[6][2] = getScore(entity, "poi_max_tier");
		effectList[7][0] = getScore(entity, "with_boolean");
		effectList[7][1] = getScore(entity, "with_minact_tier");
		effectList[7][2] = getScore(entity, "with_max_tier");
	}
}
