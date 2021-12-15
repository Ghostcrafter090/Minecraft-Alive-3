
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

public class WaterKeyItem extends Item {
	public WaterKeyItem() {
		super(new Item.Properties().tab(CreativeModeTab.TAB_MISC).stacksTo(1).fireResistant().rarity(Rarity.RARE));
		setRegistryName("water_key");
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
		list.add(new TextComponent(
				"H\uD835\uDE79\uA58E\u21B8 \u2138 \u0323 \u2351\u254E\u14ED \uA58C\u14B7|| \u268D!\u00A1\uD835\uDE79\u30EA \u2138 \u0323 \u2351\u14B7 \u22A3\u1511\u2138 \u0323 \u14B7\u14ED \u2138 \u0323 \uD835\uDE79 \u2138 \u0323 \u2351\u14B7 \u2234\uD835\uDE79\u2237\uA58E\u21B8 \uD835\uDE79\u2393 \u2234\u1511\u2138 \u0323 \u14B7\u2237 \u2138 \u0323 \uD835\uDE79 \u0296\u14B7\u22A3\u254E\u30EA \u2138 \u0323 \u2351|| \u2393\u254E\u22A3\u2351\u2138 \u0323  \uD835\uDE79\u2393 \u2138 \u0323 \u2351\u14B7 \u22A3\u268D\u1511\u2237\u21B8\u254E\u1511\u30EA\u14ED \uD835\uDE79\u2393 \uD835\uDE79\uA58E\u21B8.  o\u30EA\u14F5\u14B7 \u2138 \u0323 \u2351|| \u2393\u254E\u22A3\u2351\u2138 \u0323  \u2351\u1511\u14ED \u14F5\uD835\uDE79\u14B2\u14B2\u14B7\u30EA\u14F5\u14B7\u21B8"));
		list.add(new TextComponent(
				"\uD835\uDE79\u30EA\uA58E|| \u2138 \u0323 \u2351\u1511\u30EA \u14ED\u2351\u1511\uA58E\uA58E \u2138 \u0323 \u2351\u14B7 \u22A3\u268D\u1511\u2237\u21B8\u254E\u1511\u30EA\u14ED \uD835\uDE79\u2393 \uD835\uDE79\uA58E\u21B8 \u0296\u14B7 \u14ED\uA58E\u1511||\u1511\u0296\uA58E\u14B7.  b\u14B7 \u2234\u1511\u2237|| \uD835\uDE79\u2393 \u2138 \u0323 \u2351\u14B7|| \u21B8\u14B7\u1511\u2138 \u0323 \u2351"));
		list.add(new TextComponent(
				"\u1511\u30EA \u1511\u21B8\u234A\u14B7\u30EA\u2138 \u0323 \u268D\u2237\u14B7 \u1511\u2234\u1511\u254E\u2138 \u0323 \u14ED."));
	}
}
