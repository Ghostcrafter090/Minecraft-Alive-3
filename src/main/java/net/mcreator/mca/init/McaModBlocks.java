
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.mca.init;

import net.minecraftforge.fml.event.lifecycle.FMLClientSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.RegistryEvent;
import net.minecraftforge.client.event.ColorHandlerEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.world.level.block.Block;

import net.mcreator.mca.block.RedfinesandBlock;
import net.mcreator.mca.block.LoosegravelBlock;
import net.mcreator.mca.block.HumusBlock;
import net.mcreator.mca.block.FinesandBlock;

import java.util.List;
import java.util.ArrayList;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModBlocks {
	private static final List<Block> REGISTRY = new ArrayList<>();
	public static final Block HUMUS = register(new HumusBlock());
	public static final Block LOOSEGRAVEL = register(new LoosegravelBlock());
	public static final Block FINESAND = register(new FinesandBlock());
	public static final Block REDFINESAND = register(new RedfinesandBlock());

	private static Block register(Block block) {
		REGISTRY.add(block);
		return block;
	}

	@SubscribeEvent
	public static void registerBlocks(RegistryEvent.Register<Block> event) {
		event.getRegistry().registerAll(REGISTRY.toArray(new Block[0]));
	}

	@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD, value = Dist.CLIENT)
	public static class ClientSideHandler {
		@SubscribeEvent
		public static void clientSetup(FMLClientSetupEvent event) {
		}

		@SubscribeEvent
		public static void blockColorLoad(ColorHandlerEvent.Block event) {
			HumusBlock.blockColorLoad(event);
		}

		@SubscribeEvent
		public static void itemColorLoad(ColorHandlerEvent.Item event) {
			HumusBlock.itemColorLoad(event);
		}
	}
}
