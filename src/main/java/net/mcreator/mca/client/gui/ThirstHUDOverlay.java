
package net.mcreator.mca.client.gui;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.EventPriority;
import net.minecraftforge.client.event.RenderGameOverlayEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.mcreator.mca.network.McaModVariables;
import net.mcreator.mca.procedures.GetConfigProcedure;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.player.Player;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.GameRenderer;
import net.minecraft.client.Minecraft;
import net.mcreator.mca.procedures.thMainVar;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.blaze3d.platform.GlStateManager;

@Mod.EventBusSubscriber({Dist.CLIENT})
public class ThirstHUDOverlay {
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
			double thMain = thMainVar.get();
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
			RenderSystem.disableDepthTest();
			RenderSystem.depthMask(false);
			RenderSystem.enableBlend();
			RenderSystem.setShader(GameRenderer::getPositionTexShader);
			RenderSystem.blendFuncSeparate(GlStateManager.SourceFactor.SRC_ALPHA, GlStateManager.DestFactor.ONE_MINUS_SRC_ALPHA,
					GlStateManager.SourceFactor.ONE, GlStateManager.DestFactor.ZERO);
			RenderSystem.setShaderColor(1, 1, 1, 1);
			if ((entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).Thirst > 1) {
				thMain = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).Thirst - 1;
			}
			thMainVar.set(thMain);
			if (GetConfigProcedure.enableThirst == 1) {
				if (thMain > 95) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -21, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 90) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -21, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -21, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 85) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -29, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 80) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -29, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -29, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 75) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -37, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 70) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -37, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -37, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 65) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -45, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 60) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -45, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -45, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 55) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -53, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 50) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -53, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -53, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 45) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -61, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 40) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -61, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -61, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 35) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -69, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 30) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -69, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -69, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 25) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -77, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 20) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -77, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -77, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 15) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -85, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 10) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -85, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -85, posY + intf, 0, 0, 10, 12, 10, 12);
				}
				if (thMain > 5) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_f.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -93, posY + intf, 0, 0, 10, 12, 10, 12);
				} else if (thMain > 1) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thirst_h.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -93, posY + intf, 0, 0, 10, 12, 10, 12);
				} else {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/thist_e.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -93, posY + intf, 0, 0, 10, 12, 10, 12);
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
