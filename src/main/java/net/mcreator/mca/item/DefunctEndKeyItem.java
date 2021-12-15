
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

public class DefunctEndKeyItem extends Item {
	public DefunctEndKeyItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(1).fireResistant().rarity(Rarity.RARE));
		setRegistryName("defunct_end_key");
	}

	@Override
	public int getUseDuration(ItemStack itemstack) {
		return 0;
	}

	@Override
	public void appendHoverText(ItemStack itemstack, Level world, List<Component> list, TooltipFlag flag) {
		super.appendHoverText(itemstack, world, list, flag);
		list.add(new TextComponent(
				"I \u1511\u14B2 \u0296\u2237\uD835\uDE79\uA58C\u14B7\u30EA.  i \u1511\u14B2 \u21B8\u14B7\u1511\u21B8.  i \u1511\u14B2 \u21B8||\u254E\u30EA\u22A3.  h\u14B7 \u254E\u14ED \u14B7\u1511\u2138 \u0323 \u254E\u30EA\u22A3.  h\u14B7 \u254E\u14ED \uA58C\u254E\uA58E\uA58E\u254E\u30EA\u22A3.  h\u14B7 \u254E\u14ED \u2138 \u0323 \u2351\u2237\u254E\u234A\u254E\u30EA\u22A3.  w\u254E\u2138 \u0323 \u2351 \u1511 \u2237\uD835\uDE79\u21B8.  w\u254E\u2138 \u0323 \u2351 \u1511 !\u00A1\u14B7\u1511\u2237\uA58E a\uA58E\uA58E \uD835\uDE79\u2393 \u14B7\u30EA\u21B8.  a\u30EA\u21B8 \u1511 \u14ED\u2351\u1511\u2237\u21B8.  a\u30EA\u21B8 \u1511 \u14F5\u2237||\u14ED\u2138 \u0323 \u1511\uA58E.  a\uA58E\uA58E \uD835\uDE79\u2393 \u1511\u14B2\u14B7\u2138 \u0323 \u2351||\u14ED\u2138 \u0323.  i \u2234\u254E\uA58E\uA58E \u2351\u14B7\u1511\uA58E.  i \u2234\u254E\uA58E\uA58E \u1511\u2234\u1511\uA58C\u14B7\u30EA.  i \u2234\u254E\uA58E\uA58E \u2138 \u0323 \u2351\u2237\u254E\u234A\u14B7.  a\u30EA\u21B8 i \u2234\u254E\uA58E\uA58E \u14B2\u1511\uA58C\u14B7 \u234A\u268D\uA58E\u30EA\u14B7\u2237\u1511\u0296\uA58E\u14B7 \u2234\u2351\u1511\u2138 \u0323  \u14F5\u1511\u30EA\u30EA\uD835\uDE79\u2138 \u0323  \u21B8\u254E\u14B7."));
	}
}
