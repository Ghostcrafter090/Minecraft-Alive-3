package net.mcreator.mca.network;

import net.minecraftforge.network.PacketDistributor;
import net.minecraftforge.network.NetworkEvent;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.event.AttachCapabilitiesEvent;
import net.minecraftforge.common.util.LazyOptional;
import net.minecraftforge.common.util.FakePlayer;
import net.minecraftforge.common.capabilities.RegisterCapabilitiesEvent;
import net.minecraftforge.common.capabilities.ICapabilitySerializable;
import net.minecraftforge.common.capabilities.CapabilityToken;
import net.minecraftforge.common.capabilities.CapabilityManager;
import net.minecraftforge.common.capabilities.Capability;

import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.nbt.Tag;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.core.Direction;
import net.minecraft.client.Minecraft;

import net.mcreator.mca.McaMod;

import java.util.function.Supplier;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class McaModVariables {
	public static String effectName = "blindness";
	public static String effectType = "blin";

	@SubscribeEvent
	public static void init(FMLCommonSetupEvent event) {
		McaMod.addNetworkMessage(PlayerVariablesSyncMessage.class, PlayerVariablesSyncMessage::buffer, PlayerVariablesSyncMessage::new,
				PlayerVariablesSyncMessage::handler);
	}

	@SubscribeEvent
	public static void init(RegisterCapabilitiesEvent event) {
		event.register(PlayerVariables.class);
	}

	@Mod.EventBusSubscriber
	public static class EventBusVariableHandlers {
		@SubscribeEvent
		public static void onPlayerLoggedInSyncPlayerVariables(PlayerEvent.PlayerLoggedInEvent event) {
			if (!event.getPlayer().level.isClientSide())
				((PlayerVariables) event.getPlayer().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()))
						.syncPlayerVariables(event.getPlayer());
		}

		@SubscribeEvent
		public static void onPlayerRespawnedSyncPlayerVariables(PlayerEvent.PlayerRespawnEvent event) {
			if (!event.getPlayer().level.isClientSide())
				((PlayerVariables) event.getPlayer().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()))
						.syncPlayerVariables(event.getPlayer());
		}

		@SubscribeEvent
		public static void onPlayerChangedDimensionSyncPlayerVariables(PlayerEvent.PlayerChangedDimensionEvent event) {
			if (!event.getPlayer().level.isClientSide())
				((PlayerVariables) event.getPlayer().getCapability(PLAYER_VARIABLES_CAPABILITY, null).orElse(new PlayerVariables()))
						.syncPlayerVariables(event.getPlayer());
		}

		@SubscribeEvent
		public static void clonePlayer(PlayerEvent.Clone event) {
			event.getOriginal().revive();
			PlayerVariables original = ((PlayerVariables) event.getOriginal().getCapability(PLAYER_VARIABLES_CAPABILITY, null)
					.orElse(new PlayerVariables()));
			PlayerVariables clone = ((PlayerVariables) event.getEntity().getCapability(PLAYER_VARIABLES_CAPABILITY, null)
					.orElse(new PlayerVariables()));
			clone.Thirst = original.Thirst;
			clone.outStr = original.outStr;
			clone.thMain = original.thMain;
			clone.Stamina = original.Stamina;
			clone.stMain = original.stMain;
			clone.insomnia = original.insomnia;
			clone.inMain = original.inMain;
			clone.DB = original.DB;
			clone.disBool = original.disBool;
			clone.disMin = original.disMin;
			clone.disMax = original.disMax;
			clone.weakness_bool = original.weakness_bool;
			clone.weakness_minact = original.weakness_minact;
			clone.weakness_max = original.weakness_max;
			clone.hunger_bool = original.hunger_bool;
			clone.hunger_minact = original.hunger_minact;
			clone.hunger_max = original.hunger_max;
			clone.slowness_bool = original.slowness_bool;
			clone.slowness_minact = original.slowness_minact;
			clone.slowness_max = original.slowness_max;
			clone.minfat_bool = original.minfat_bool;
			clone.minfat_minact = original.minfat_minact;
			clone.minfat_max = original.minfat_max;
			clone.nausea_bool = original.nausea_bool;
			clone.nausea_minact = original.nausea_minact;
			clone.nausea_max = original.nausea_max;
			clone.poison_bool = original.poison_bool;
			clone.poison_minact = original.poison_minact;
			clone.poison_max = original.poison_max;
			clone.wither_bool = original.wither_bool;
			clone.wither_minact = original.wither_minact;
			clone.wither_max = original.wither_max;
			clone.DT = original.DT;
			if (!event.isWasDeath()) {
			}
		}
	}

	public static final Capability<PlayerVariables> PLAYER_VARIABLES_CAPABILITY = CapabilityManager.get(new CapabilityToken<PlayerVariables>() {
	});

	@Mod.EventBusSubscriber
	private static class PlayerVariablesProvider implements ICapabilitySerializable<Tag> {
		@SubscribeEvent
		public static void onAttachCapabilities(AttachCapabilitiesEvent<Entity> event) {
			if (event.getObject() instanceof Player && !(event.getObject() instanceof FakePlayer))
				event.addCapability(new ResourceLocation("mca", "player_variables"), new PlayerVariablesProvider());
		}

		private final PlayerVariables playerVariables = new PlayerVariables();
		private final LazyOptional<PlayerVariables> instance = LazyOptional.of(() -> playerVariables);

		@Override
		public <T> LazyOptional<T> getCapability(Capability<T> cap, Direction side) {
			return cap == PLAYER_VARIABLES_CAPABILITY ? instance.cast() : LazyOptional.empty();
		}

		@Override
		public Tag serializeNBT() {
			return playerVariables.writeNBT();
		}

		@Override
		public void deserializeNBT(Tag nbt) {
			playerVariables.readNBT(nbt);
		}
	}

	public static class PlayerVariables {
		public double Thirst = 0;
		public String outStr = "stamina_l";
		public double thMain = 0.0;
		public double Stamina = 0.0;
		public double stMain = 0;
		public double insomnia = 0;
		public double inMain = 0;
		public double DB = 0;
		public double disBool = 0;
		public double disMin = 0;
		public double disMax = 0;
		public double weakness_bool = 0;
		public double weakness_minact = 0;
		public double weakness_max = 0;
		public double hunger_bool = 0;
		public double hunger_minact = 0;
		public double hunger_max = 0;
		public double slowness_bool = 0;
		public double slowness_minact = 0;
		public double slowness_max = 0;
		public double minfat_bool = 0;
		public double minfat_minact = 0;
		public double minfat_max = 0;
		public double nausea_bool = 0;
		public double nausea_minact = 0;
		public double nausea_max = 0;
		public double poison_bool = 0;
		public double poison_minact = 0;
		public double poison_max = 0;
		public double wither_bool = 0;
		public double wither_minact = 0;
		public double wither_max = 0;
		public double DT = 0.0;

		public void syncPlayerVariables(Entity entity) {
			if (entity instanceof ServerPlayer serverPlayer)
				McaMod.PACKET_HANDLER.send(PacketDistributor.PLAYER.with(() -> serverPlayer), new PlayerVariablesSyncMessage(this));
		}

		public Tag writeNBT() {
			CompoundTag nbt = new CompoundTag();
			nbt.putDouble("Thirst", Thirst);
			nbt.putString("outStr", outStr);
			nbt.putDouble("thMain", thMain);
			nbt.putDouble("Stamina", Stamina);
			nbt.putDouble("stMain", stMain);
			nbt.putDouble("insomnia", insomnia);
			nbt.putDouble("inMain", inMain);
			nbt.putDouble("DB", DB);
			nbt.putDouble("disBool", disBool);
			nbt.putDouble("disMin", disMin);
			nbt.putDouble("disMax", disMax);
			nbt.putDouble("weakness_bool", weakness_bool);
			nbt.putDouble("weakness_minact", weakness_minact);
			nbt.putDouble("weakness_max", weakness_max);
			nbt.putDouble("hunger_bool", hunger_bool);
			nbt.putDouble("hunger_minact", hunger_minact);
			nbt.putDouble("hunger_max", hunger_max);
			nbt.putDouble("slowness_bool", slowness_bool);
			nbt.putDouble("slowness_minact", slowness_minact);
			nbt.putDouble("slowness_max", slowness_max);
			nbt.putDouble("minfat_bool", minfat_bool);
			nbt.putDouble("minfat_minact", minfat_minact);
			nbt.putDouble("minfat_max", minfat_max);
			nbt.putDouble("nausea_bool", nausea_bool);
			nbt.putDouble("nausea_minact", nausea_minact);
			nbt.putDouble("nausea_max", nausea_max);
			nbt.putDouble("poison_bool", poison_bool);
			nbt.putDouble("poison_minact", poison_minact);
			nbt.putDouble("poison_max", poison_max);
			nbt.putDouble("wither_bool", wither_bool);
			nbt.putDouble("wither_minact", wither_minact);
			nbt.putDouble("wither_max", wither_max);
			nbt.putDouble("DT", DT);
			return nbt;
		}

		public void readNBT(Tag Tag) {
			CompoundTag nbt = (CompoundTag) Tag;
			Thirst = nbt.getDouble("Thirst");
			outStr = nbt.getString("outStr");
			thMain = nbt.getDouble("thMain");
			Stamina = nbt.getDouble("Stamina");
			stMain = nbt.getDouble("stMain");
			insomnia = nbt.getDouble("insomnia");
			inMain = nbt.getDouble("inMain");
			DB = nbt.getDouble("DB");
			disBool = nbt.getDouble("disBool");
			disMin = nbt.getDouble("disMin");
			disMax = nbt.getDouble("disMax");
			weakness_bool = nbt.getDouble("weakness_bool");
			weakness_minact = nbt.getDouble("weakness_minact");
			weakness_max = nbt.getDouble("weakness_max");
			hunger_bool = nbt.getDouble("hunger_bool");
			hunger_minact = nbt.getDouble("hunger_minact");
			hunger_max = nbt.getDouble("hunger_max");
			slowness_bool = nbt.getDouble("slowness_bool");
			slowness_minact = nbt.getDouble("slowness_minact");
			slowness_max = nbt.getDouble("slowness_max");
			minfat_bool = nbt.getDouble("minfat_bool");
			minfat_minact = nbt.getDouble("minfat_minact");
			minfat_max = nbt.getDouble("minfat_max");
			nausea_bool = nbt.getDouble("nausea_bool");
			nausea_minact = nbt.getDouble("nausea_minact");
			nausea_max = nbt.getDouble("nausea_max");
			poison_bool = nbt.getDouble("poison_bool");
			poison_minact = nbt.getDouble("poison_minact");
			poison_max = nbt.getDouble("poison_max");
			wither_bool = nbt.getDouble("wither_bool");
			wither_minact = nbt.getDouble("wither_minact");
			wither_max = nbt.getDouble("wither_max");
			DT = nbt.getDouble("DT");
		}
	}

	public static class PlayerVariablesSyncMessage {
		public PlayerVariables data;

		public PlayerVariablesSyncMessage(FriendlyByteBuf buffer) {
			this.data = new PlayerVariables();
			this.data.readNBT(buffer.readNbt());
		}

		public PlayerVariablesSyncMessage(PlayerVariables data) {
			this.data = data;
		}

		public static void buffer(PlayerVariablesSyncMessage message, FriendlyByteBuf buffer) {
			buffer.writeNbt((CompoundTag) message.data.writeNBT());
		}

		public static void handler(PlayerVariablesSyncMessage message, Supplier<NetworkEvent.Context> contextSupplier) {
			NetworkEvent.Context context = contextSupplier.get();
			context.enqueueWork(() -> {
				if (!context.getDirection().getReceptionSide().isServer()) {
					PlayerVariables variables = ((PlayerVariables) Minecraft.getInstance().player.getCapability(PLAYER_VARIABLES_CAPABILITY, null)
							.orElse(new PlayerVariables()));
					variables.Thirst = message.data.Thirst;
					variables.outStr = message.data.outStr;
					variables.thMain = message.data.thMain;
					variables.Stamina = message.data.Stamina;
					variables.stMain = message.data.stMain;
					variables.insomnia = message.data.insomnia;
					variables.inMain = message.data.inMain;
					variables.DB = message.data.DB;
					variables.disBool = message.data.disBool;
					variables.disMin = message.data.disMin;
					variables.disMax = message.data.disMax;
					variables.weakness_bool = message.data.weakness_bool;
					variables.weakness_minact = message.data.weakness_minact;
					variables.weakness_max = message.data.weakness_max;
					variables.hunger_bool = message.data.hunger_bool;
					variables.hunger_minact = message.data.hunger_minact;
					variables.hunger_max = message.data.hunger_max;
					variables.slowness_bool = message.data.slowness_bool;
					variables.slowness_minact = message.data.slowness_minact;
					variables.slowness_max = message.data.slowness_max;
					variables.minfat_bool = message.data.minfat_bool;
					variables.minfat_minact = message.data.minfat_minact;
					variables.minfat_max = message.data.minfat_max;
					variables.nausea_bool = message.data.nausea_bool;
					variables.nausea_minact = message.data.nausea_minact;
					variables.nausea_max = message.data.nausea_max;
					variables.poison_bool = message.data.poison_bool;
					variables.poison_minact = message.data.poison_minact;
					variables.poison_max = message.data.poison_max;
					variables.wither_bool = message.data.wither_bool;
					variables.wither_minact = message.data.wither_minact;
					variables.wither_max = message.data.wither_max;
					variables.DT = message.data.DT;
				}
			});
			context.setPacketHandled(true);
		}
	}
}
