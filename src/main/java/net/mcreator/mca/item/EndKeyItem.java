
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
		list.add(new TextComponent("T\u1511\uA58C\u14B7 \u14F5\u1511\u2237\u14B7 !\u00A1\uA58E\u1511||\u14B7\u2237"));
		list.add(new TextComponent(
				"\u2393\uD835\uDE79\u2237 \u2138 \u0323 \u2351\u14B7 l\uD835\uDE79\u2237\u21B8 o\u2393 a\uA58E\uA58E e\u30EA\u21B8\u254E\u30EA\u22A3\u14ED \u254E\u14ED \u1511\uA58E\u2234\u1511||\u14ED \u2234\u1511\u2138 \u0323 \u14F5\u2351\u254E\u30EA\u22A3. W\u14B7 \u14ED\u2351\u1511\uA58E\uA58E \u14ED\u14B7\u14B7 ||\uD835\uDE79\u268D \u2234\u254E\u2138 \u0323 \u2351\u254E\u30EA \u2351\u254E\u14ED !\u00A1\u14B7\u21B8\u14B7\u14ED\u2138 \u0323 \u1511\uA58E \u2234\u2351\u14B7\u30EA \u2138 \u0323 \u2351\uD835\uDE79\u2234 \u2138 \u0323 \u2237\u1511\u30EA\u14ED\u14F5\u14B7\u30EA\u21B8\u14ED.    - \u03C3\u03CD\u03BC\u03C0\u03B1\u03BD"));
	}
}
