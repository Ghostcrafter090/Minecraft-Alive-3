
package net.mcreator.mca.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;

public class KyakunutCrystalItem extends Item {
	public KyakunutCrystalItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(64).fireResistant().rarity(Rarity.RARE));
		setRegistryName("kyakunut_crystal");
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
