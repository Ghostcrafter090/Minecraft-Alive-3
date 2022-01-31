
package net.mcreator.mca.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;

public class KyaConduitItem extends Item {
	public KyaConduitItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(3).fireResistant().rarity(Rarity.EPIC));
		setRegistryName("kya_conduit");
	}

	@Override
	public int getEnchantmentValue() {
		return 26;
	}

	@Override
	public int getUseDuration(ItemStack itemstack) {
		return 0;
	}

	@Override
	public boolean isFoil(ItemStack itemstack) {
		return true;
	}
}
