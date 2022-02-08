
package net.mcreator.mca.client.gui;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.EventPriority;
import net.minecraftforge.client.event.RenderGameOverlayEvent;
import net.minecraftforge.api.distmarker.Dist;
import net.mcreator.mca.network.McaModVariables;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.GameRenderer;
import net.minecraft.client.Minecraft;
import net.mcreator.mca.McaMod;

import net.mcreator.mca.procedures.inMainVar;
import java.lang.Math;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.blaze3d.platform.GlStateManager;
import java.util.function.IntFunction;

@Mod.EventBusSubscriber({Dist.CLIENT})
public class InsomniaDisplayOverlay {
	@SubscribeEvent(priority = EventPriority.NORMAL)
	public static void eventHandler(RenderGameOverlayEvent.Pre event) {
		if (event.getType() == RenderGameOverlayEvent.ElementType.ALL) {
			int w = event.getWindow().getGuiScaledWidth();
			double h = event.getWindow().getGuiScaledHeight();
			int posX = w / 2;
			int posY = (int)(h / 2);
			int intf = (int)((h) * 0.25882352941176473);
			intf = intf + ((intf - 66) / 2);
			Level _world = null;
			double _x = 0;
			double _y = 0;
			double _z = 0;
			Player entity = Minecraft.getInstance().player;
			if (entity != null) {
				_world = entity.level;
				_x = entity.getX();
				_y = entity.getY();
				_z = entity.getZ();
			}
			Level world = _world;
			double x = _x;
			double y = _y;
			double z = _z;
			double inMain = inMainVar.get();
			RenderSystem.disableDepthTest();
			RenderSystem.depthMask(false);
			RenderSystem.enableBlend();
			RenderSystem.setShader(GameRenderer::getPositionTexShader);
			RenderSystem.blendFuncSeparate(GlStateManager.SourceFactor.SRC_ALPHA, GlStateManager.DestFactor.ONE_MINUS_SRC_ALPHA,
					GlStateManager.SourceFactor.ONE, GlStateManager.DestFactor.ZERO);
			RenderSystem.setShaderColor(1, 1, 1, 1);
			if ((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).insomnia > 1) {
				inMain = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).insomnia - 1;
			}
			inMainVar.set(inMain);
			int i = 0;
			int l = 0;
			double testVar = 6560;
			while ((i < 16) && (l != 1)) {
				if (inMain < testVar) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/moon_" + Integer.toString(i) + ".png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -10, posY + intf, 0, 0, 20, 19, 20, 19);
					l = 1;
					i = 16;
				}
				i = i + 1;
				testVar = testVar + 6560;
			}
			if (l != 1) {
				RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/moon_15.png"));
				Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -10, posY + intf, 0, 0, 20, 19, 20, 19);
			}
			RenderSystem.depthMask(true);
			RenderSystem.defaultBlendFunc();
			RenderSystem.enableDepthTest();
			RenderSystem.disableBlend();
			RenderSystem.setShaderColor(1, 1, 1, 1);
		}
	}
}
