
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.mca.init;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.RegistryEvent;

import net.minecraft.world.level.block.Block;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.BlockItem;

import net.mcreator.mca.item.WaterKeyShardItem;
import net.mcreator.mca.item.WaterKeyItem;
import net.mcreator.mca.item.TheBlightItem;
import net.mcreator.mca.item.FireKeyShardItem;
import net.mcreator.mca.item.FireKeyItem;
import net.mcreator.mca.item.EndKeyItem;
import net.mcreator.mca.item.DefunctEndKeyItem;

import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModItems {
	private static final List<Item> REGISTRY = new ArrayList<>();
	public static final Item HUMUS = register(McaModBlocks.HUMUS, CreativeModeTab.TAB_BUILDING_BLOCKS);
	public static final Item LOOSEGRAVEL = register(McaModBlocks.LOOSEGRAVEL, CreativeModeTab.TAB_BUILDING_BLOCKS);
	public static final Item FINESAND = register(McaModBlocks.FINESAND, CreativeModeTab.TAB_BUILDING_BLOCKS);
	public static final Item REDFINESAND = register(McaModBlocks.REDFINESAND, CreativeModeTab.TAB_BUILDING_BLOCKS);
	public static final Item WATER_KEY_SHARD = register(new WaterKeyShardItem());
	public static final Item WATER_KEY = register(new WaterKeyItem());
	public static final Item FIRE_KEY_SHARD = register(new FireKeyShardItem());
	public static final Item FIRE_KEY = register(new FireKeyItem());
	public static final Item DEFUNCT_END_KEY = register(new DefunctEndKeyItem());
	public static final Item END_KEY = register(new EndKeyItem());
	public static final Item THE_BLIGHT = register(new TheBlightItem());

	private static Item register(Item item) {
		REGISTRY.add(item);
		return item;
	}

	private static Item register(Block block, CreativeModeTab tab) {
		return register(new BlockItem(block, new Item.Properties().tab(tab)).setRegistryName(block.getRegistryName()));
	}

	@SubscribeEvent
	public static void registerItems(RegistryEvent.Register<Item> event) {
		event.getRegistry().registerAll(REGISTRY.toArray(new Item[0]));
	}
}
