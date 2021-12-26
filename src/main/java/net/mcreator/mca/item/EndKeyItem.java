
package net.mcreator.mca.item;

import net.minecraft.world.level.Level;
import net.minecraft.world.item.TooltipFlag;
import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.network.chat.TextComponent;
import net.minecraft.network.chat.Component;

import java.util.List;

public class EndKeyItem extends Item {
	public EndKeyItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(1).fireResistant().rarity(Rarity.EPIC));
		setRegistryName("end_key");
	}

	@Override
	public int getUseDuration(ItemStack itemstack) {
		return 0;
	}

	@Override
	public boolean isFoil(ItemStack itemstack) {
		return true;
	}

	@Override
	public void appendHoverText(ItemStack itemstack, Level world, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, world, list, flag);
		list.add(new TextComponent("T??? ???? !\u00A1??||??"));
		list.add(new TextComponent(
				"??? ? ? ?? l??? o? a?? e?????? ?? ????||? ??? ? ?????. W? ????? ??? ||?? ??? ? ??? ??? !\u00A1????? ? ?? ???? ? ? ??? ? ? ?????????.    - ??????"));
	}
}
