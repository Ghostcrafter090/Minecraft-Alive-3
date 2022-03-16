
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
import net.mcreator.mca.item.KyakunutCrystalItem;
import net.mcreator.mca.item.KyaConduitItem;
import net.mcreator.mca.item.FireKeyShardItem;
import net.mcreator.mca.item.FireKeyItem;
import net.mcreator.mca.item.EndKeyItem;
import net.mcreator.mca.item.DefunctEndKeyItem;
import net.mcreator.mca.item.AnchientPageItem;
import net.mcreator.mca.item.CopperSwordItem;
import net.mcreator.mca.item.CopperShovelItem;
import net.mcreator.mca.item.CopperPickaxeItem;
import net.mcreator.mca.item.CopperHoeItem;
import net.mcreator.mca.item.CopperAxeItem;
import net.mcreator.mca.item.CopperArmorItem;

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
	public static final Item ANCHIENT_PAGE = register(new AnchientPageItem());
	public static final Item KYAKUNUT_CRYSTAL = register(new KyakunutCrystalItem());
	public static final Item KYA_CONDUIT = register(new KyaConduitItem());
	public static final Item COPPER_ARMOR_HELMET = register(new CopperArmorItem.Helmet());
	public static final Item COPPER_ARMOR_CHESTPLATE = register(new CopperArmorItem.Chestplate());
	public static final Item COPPER_ARMOR_LEGGINGS = register(new CopperArmorItem.Leggings());
	public static final Item COPPER_ARMOR_BOOTS = register(new CopperArmorItem.Boots());
	public static final Item COPPER_PICKAXE = register(new CopperPickaxeItem());
	public static final Item COPPER_AXE = register(new CopperAxeItem());
	public static final Item COPPER_SHOVEL = register(new CopperShovelItem());
	public static final Item COPPER_HOE = register(new CopperHoeItem());
	public static final Item COPPER_SWORD = register(new CopperSwordItem());

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
