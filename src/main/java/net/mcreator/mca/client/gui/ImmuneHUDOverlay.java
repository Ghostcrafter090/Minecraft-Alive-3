
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
import net.minecraft.world.scores.Scoreboard;
import net.minecraft.world.scores.Score;
import net.minecraft.world.scores.Objective;
import net.mcreator.mca.procedures.GetDiseaseEffectsProcedure;

import com.mojang.blaze3d.systems.RenderSystem;
import com.mojang.blaze3d.platform.GlStateManager;

@Mod.EventBusSubscriber({Dist.CLIENT})
public class ImmuneHUDOverlay {

	public static double returnPart(double dt, double min, double max) {
		double dtn = (dt / 1000) - 1;
		double maxf = max + min;
		if (dtn >= min) {
			if (dtn <= maxf) {
				return (dtn - min);	
			} else {
				return max;
			}
		}
		return -1;
	}

	private static void setVarFromScore(String score) {
		McaModVariables.effectName = score;
	}

	public static void dispSymptom(String type, int i, double dt, int posX, int posY, RenderGameOverlayEvent.Pre event) {
		Player entity = Minecraft.getInstance().player;
		double bool = GetDiseaseEffectsProcedure.effectList[i][0];
		double max = GetDiseaseEffectsProcedure.effectList[i][1];
		double min = GetDiseaseEffectsProcedure.effectList[i][2];
		if (bool > 0) {
			double part = returnPart(dt, min, max);
			if (part > 0) {
				if (part <  2) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/" + type + "_0.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -150, posY, 0, 0, 25, 33, 25, 33);
				}
				if (part >= 2) {
					RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/" + type + "_1.png"));
					Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -150, posY, 0, 0, 25, 33, 25, 33);
				}
			}
		}
	}

	@SubscribeEvent(priority = EventPriority.NORMAL)
	public static void eventHandler(RenderGameOverlayEvent.Pre event) {
		if (event.getType() == RenderGameOverlayEvent.ElementType.ALL) {
			int w = event.getWindow().getGuiScaledWidth();
			double h = event.getWindow().getGuiScaledHeight();
			int posX = w / 2;
			int posY = (int)(h / 2);
			double intl = ((h) * 0.25882352941176473);
			intl = (intl + ((intl - 66) / 2));
			int intn = (int)intl;
			int intf = (int)(intl * 0.2727272727272727);
			Level _world = null;
			Player entity = Minecraft.getInstance().player;
			double _x = 0;
			double _y = 0;
			double _z = 0;
			double DB = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).DB;
			double DT = (entity.getCapability(McaModVariables.PLAYER_VARIABLES_CAPABILITY, null).orElse(new McaModVariables.PlayerVariables())).DT;
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
			if (GetConfigProcedure.enableDisease == 1) {
				if (DB >= 1) {
					if (true) {
						RenderSystem.setShaderTexture(0, new ResourceLocation("mca:textures/caduceus.png"));
						Minecraft.getInstance().gui.blit(event.getMatrixStack(), posX + -150, posY + intf + intn, 0, 0, 25, 33, 25, 33);
					}
					dispSymptom("blindness", 0, DT, posX, posY + intf + intn, event);
					dispSymptom("hunger", 1, DT, posX, posY + intf + intn, event);
					dispSymptom("nausea", 2, DT, posX, posY + intf + intn, event);
					dispSymptom("slowness", 3, DT, posX, posY + intf + intn, event);
					dispSymptom("weakness", 4, DT, posX, posY + intf + intn, event);
					dispSymptom("minfat", 5, DT, posX, posY + intf + intn, event);
					dispSymptom("poison", 6, DT, posX, posY + intf + intn, event);
					dispSymptom("wither", 7, DT, posX, posY + intf + intn, event);
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
