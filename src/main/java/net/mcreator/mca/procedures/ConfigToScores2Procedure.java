package net.mcreator.mca.procedures;

import net.mcreator.mca.procedures.GetConfigProcedure;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.Event;
import net.minecraftforge.event.TickEvent;

import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.Vec2;
import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.network.chat.TextComponent;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.CommandSource;

import javax.annotation.Nullable;

@Mod.EventBusSubscriber
public class ConfigToScores2Procedure {

	public static int cnt = 0;

	@SubscribeEvent
	public static void onWorldTick(TickEvent.WorldTickEvent event) {
		if (event.phase == TickEvent.Phase.END) {
			execute(event, event.world);
		}
	}

	public static void execute(LevelAccessor world) {
		execute(null, world);
	}

	private static void execute(@Nullable Event event, LevelAccessor world) {
			if (cnt == 0) {
                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s regulationModif " + String.valueOf(GetConfigProcedure.regulationModifier));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s aliveDecayTps " + String.valueOf(GetConfigProcedure.aliveDecayTps));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableThirst " + String.valueOf(GetConfigProcedure.enableThirst));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableStamina " + String.valueOf(GetConfigProcedure.enableStamina));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableInsomnia " + String.valueOf(GetConfigProcedure.enableInsomnia));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableAddrenali " + String.valueOf(GetConfigProcedure.enableAddrenalin));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableLowHealth " + String.valueOf(GetConfigProcedure.enableLowHealthEffects));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableDrowningE " + String.valueOf(GetConfigProcedure.enableDrowningEffects));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableDisease " + String.valueOf(GetConfigProcedure.enableDisease));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableBlockDeca " + String.valueOf(GetConfigProcedure.enableBlockDecay));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableTreeDynam " + String.valueOf(GetConfigProcedure.enableTreeDynamics));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enablePlantDyna " + String.valueOf(GetConfigProcedure.enablePlantDynamics));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableEntityDyn " + String.valueOf(GetConfigProcedure.enableEntityDynamics));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enablePaths " + String.valueOf(GetConfigProcedure.enablePaths));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableProgressi " + String.valueOf(GetConfigProcedure.enableProgression));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableSawayigs " + String.valueOf(GetConfigProcedure.enableSawayigs));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableMyddraal " + String.valueOf(GetConfigProcedure.enableMyddraal));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableAdvancedC " + String.valueOf(GetConfigProcedure.enableAdvancedCreeperAI));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableEndCrysta " + String.valueOf(GetConfigProcedure.enableEndCrystalMechanics));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableAdvancedE " + String.valueOf(GetConfigProcedure.enableAdvancedEndermanAI));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableCubeEntit " + String.valueOf(GetConfigProcedure.enableCubeEntityEffects));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableGates " + String.valueOf(GetConfigProcedure.enableGates));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableMachinShi " + String.valueOf(GetConfigProcedure.enableMachinShin));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableBodies " + String.valueOf(GetConfigProcedure.enableBodies));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableMedicine " + String.valueOf(GetConfigProcedure.enableMedicine));

                if (world instanceof ServerLevel _level)
                        _level.getServer().getCommands().performCommand(
                                        new CommandSourceStack(CommandSource.NULL, new Vec3(0, 100, 0), Vec2.ZERO, _level, 4, "", new TextComponent(""),
                                                        _level.getServer(), null).withSuppressedOutput(),
                                        "execute as @e[name=dmain,type=marker] run scoreboard players set @s enableTheForest " + String.valueOf(GetConfigProcedure.enableTheForestMode));
			}
			cnt = cnt + 1;
			if (cnt == 100) {
				cnt = 0;
			}
	}
}
