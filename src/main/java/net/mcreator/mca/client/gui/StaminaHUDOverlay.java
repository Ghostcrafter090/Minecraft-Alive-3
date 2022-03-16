
package net.mcreator.mca.client.gui;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.EventPriority;
import net.minecraftforge.client.event.RenderGameOverlayEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.mcreator.mca.procedures.GetConfigProcedure;
import net.mcreator.mca.network.McaModVariables;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.GameRenderer;
import net.minecraft.client.Minecraft;
import net.mcreator.mca.procedures.stMainVar;
import java.lang.Math;
import net.mcreator.mca.McaMod;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.blaze3d.platform.GlStateManager;

@Mod.EventBusSubscriber({Dist.CLIENT})
public class StaminaHUDOverlay {

	public static String returnResource(double dispA, double dispB, double condVal) {
		Player entity = Minecraft.getInstance().player;
		String type = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).outStr;
		if (type == "") {
			type = "stamina_l";
		}
		String out = "mca:textures/" + type;
		if (dispB < condVal) {
			out = out + "_e.png";
		} else if (dispB == condVal) {
			if (dispA == 4) {
				out = out + "_4.png";
			}
			else if (dispA == 3) {
				out = out + "_3.png";
			}
			else if (dispA == 2) {
				out = out + "_2.png";
			}
			else if (dispA == 1) {
				out = out + "_1.png";
			} else {
				out = out + "_0.png";
			}
		} else {
			out = out + "_4.png";
		}
		return out;
	}

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
			double stMain = stMainVar.get();
			double _y = 0;
			double _z = 0;
			double dispA = 0;
			double dispB = 0;
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
			RenderSystem.disableDepthTest();
			RenderSystem.depthMask(false);
			RenderSystem.enableBlend();
			RenderSystem.setShader(GameRenderer::getPositionTexShader);
			RenderSystem.blendFuncSeparate(GlStateManager.SourceFactor.SRC_ALPHA, GlStateManager.DestFactor.ONE_MINUS_SRC_ALPHA,
					GlStateManager.SourceFactor.ONE, GlStateManager.DestFactor.ZERO);
			RenderSystem.setShaderColor(1, 1, 1, 1);
			if ((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).Stamina > 1) {
				stMain = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).Stamina - 1;
				if (stMain > 1000) {
					stMain = 1000;
				}
			}
			stMainVar.set(stMain);
			dispA = Math.floor((stMain % 100) / 20);
			dispB = Math.floor(stMain / 100);
			// McaMod.LOGGER.info((new java.text.DecimalFormat("##.##").format(dispA)));
			// McaMod.LOGGER.info((new java.text.DecimalFormat("##.##").format(dispB)));
			if (GetConfigProcedure.enableStamina == 1) {
				int i = 0;
				int posXn = 11;
				while (i < 10) {
					RenderSystem.setShaderTexture(0, new ResourceLocation(returnResource(dispA, dispB, i)));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + posXn, posY + intf, 0, 0, 10, 12, 10, 12);
					posXn = posXn + 8;
					i = i + 1;
				}
			}
			RenderSystem.depthMask(true);
			RenderSystem.defaultBlendFunc();
			RenderSystem.enableDepthTest();
			RenderSystem.disableBlend();
			RenderSystem.setShaderColor(1, 1, 1, 1);
		}
	}
}
