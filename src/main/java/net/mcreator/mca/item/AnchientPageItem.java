
package net.mcreator.mca.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;

public class AnchientPageItem extends Item {
	public AnchientPageItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(1).fireResistant().rarity(Rarity.EPIC));
		setRegistryName("anchient_page");
	}

	@Override
	public boolean hasCraftingRemainingItem() {
		return true;
	}

	@Override
	public ItemStack getContainerItem(ItemStack itemstack) {
		return new ItemStack(this);
	}

	@Override
	public int getEnchantmentValue() {
		return 15;
	}

	@Override
	public int getUseDuration(ItemStack itemstack) {
		return 0;
	}
}
