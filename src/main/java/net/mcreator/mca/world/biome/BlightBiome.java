
package net.mcreator.mca.world.biome;

import net.minecraftforge.common.BiomeDictionary;

import net.minecraft.world.level.levelgen.surfacebuilders.SurfaceBuilderBaseConfiguration;
import net.minecraft.world.level.levelgen.surfacebuilders.SurfaceBuilder;
import net.minecraft.world.level.levelgen.surfacebuilders.ConfiguredSurfaceBuilder;
import net.minecraft.world.level.levelgen.placement.FrequencyWithExtraChanceDecoratorConfiguration;
import net.minecraft.world.level.levelgen.placement.FeatureDecorator;
import net.minecraft.world.level.levelgen.feature.trunkplacers.StraightTrunkPlacer;
import net.minecraft.world.level.levelgen.feature.stateproviders.SimpleStateProvider;
import net.minecraft.world.level.levelgen.feature.foliageplacers.BlobFoliagePlacer;
import net.minecraft.world.level.levelgen.feature.featuresize.TwoLayersFeatureSize;
import net.minecraft.world.level.levelgen.feature.configurations.TreeConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.RandomPatchConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.ProbabilityFeatureConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.NoiseDependantDecoratorConfiguration;
import net.minecraft.world.level.levelgen.feature.configurations.HugeMushroomFeatureConfiguration;
import net.minecraft.world.level.levelgen.feature.blockplacers.SimpleBlockPlacer;
import net.minecraft.world.level.levelgen.feature.blockplacers.ColumnPlacer;
import net.minecraft.world.level.levelgen.feature.Feature;
import net.minecraft.world.level.levelgen.feature.ConfiguredFeature;
import net.minecraft.world.level.levelgen.GenerationStep;
import net.minecraft.world.level.block.HugeMushroomBlock;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.biome.MobSpawnSettings;
import net.minecraft.world.level.biome.BiomeSpecialEffects;
import net.minecraft.world.level.biome.BiomeGenerationSettings;
import net.minecraft.world.level.biome.Biome;
import net.minecraft.world.level.biome.AmbientParticleSettings;
import net.minecraft.world.level.biome.AmbientMoodSettings;
import net.minecraft.world.level.biome.AmbientAdditionsSettings;
import net.minecraft.world.entity.MobCategory;
import net.minecraft.world.entity.EntityType;
import net.minecraft.util.valueproviders.ConstantInt;
import net.minecraft.util.valueproviders.BiasedToBottomInt;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.Music;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.resources.ResourceKey;
import net.minecraft.data.worldgen.StructureFeatures;
import net.minecraft.data.worldgen.Features;
import net.minecraft.data.worldgen.BiomeDefaultFeatures;
import net.minecraft.data.BuiltinRegistries;
import net.minecraft.core.particles.ParticleTypes;
import net.minecraft.core.Registry;

import net.mcreator.mca.world.features.treedecorators.BlightTrunkDecorator;
import net.mcreator.mca.world.features.treedecorators.BlightLeaveDecorator;
import net.mcreator.mca.init.McaModBiomes;
import net.mcreator.mca.McaMod;

import java.util.Map;
import java.util.HashMap;

import com.google.common.collect.ImmutableList;

public class BlightBiome {
	private static final ConfiguredSurfaceBuilder<?> SURFACE_BUILDER = SurfaceBuilder.DEFAULT.configured(new SurfaceBuilderBaseConfiguration(
			Blocks.MYCELIUM.defaultBlockState(), Blocks.ANDESITE.defaultBlockState(), Blocks.ANDESITE.defaultBlockState()));

	public static Biome createBiome() {
		BiomeSpecialEffects effects = new BiomeSpecialEffects.Builder().fogColor(-3355393).waterColor(-3355393).waterFogColor(-3355393)
				.skyColor(-3355393).foliageColorOverride(-3355393).grassColorOverride(-3355393)
				.ambientLoopSound(new SoundEvent(new ResourceLocation("ambient.underwater.loop")))
				.ambientMoodSound(new AmbientMoodSettings(new SoundEvent(new ResourceLocation("ambient.warped_forest.mood")), 2000, 8, 2))
				.ambientAdditionsSound(
						new AmbientAdditionsSettings(new SoundEvent(new ResourceLocation("ambient.underwater.loop.additions")), 0.0111D))
				.backgroundMusic(new Music(new SoundEvent(new ResourceLocation("ambient.soul_sand_valley.loop")), 12000, 24000, true))
				.ambientParticle(new AmbientParticleSettings(ParticleTypes.SOUL, 0.005f)).build();
		BiomeGenerationSettings.Builder biomeGenerationSettings = new BiomeGenerationSettings.Builder().surfaceBuilder(SURFACE_BUILDER);
		biomeGenerationSettings.addStructureStart(StructureFeatures.STRONGHOLD);
		biomeGenerationSettings.addStructureStart(StructureFeatures.MINESHAFT);
		biomeGenerationSettings.addStructureStart(StructureFeatures.MINESHAFT_MESA);
		biomeGenerationSettings.addStructureStart(StructureFeatures.DESERT_PYRAMID);
		biomeGenerationSettings.addStructureStart(StructureFeatures.OCEAN_MONUMENT);
		biomeGenerationSettings.addStructureStart(StructureFeatures.SHIPWRECK);
		biomeGenerationSettings.addStructureStart(StructureFeatures.SHIPWRECH_BEACHED);
		biomeGenerationSettings.addStructureStart(StructureFeatures.BURIED_TREASURE);
		biomeGenerationSettings.addStructureStart(StructureFeatures.OCEAN_RUIN_COLD);
		biomeGenerationSettings.addStructureStart(StructureFeatures.NETHER_FOSSIL);
		biomeGenerationSettings.addStructureStart(StructureFeatures.RUINED_PORTAL_MOUNTAIN);
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
				register("trees",
						Feature.TREE
								.configured((new TreeConfiguration.TreeConfigurationBuilder(new SimpleStateProvider(Blocks.STONE.defaultBlockState()),
										new StraightTrunkPlacer(0, 2, 0), new SimpleStateProvider(Blocks.AIR.defaultBlockState()),
										new SimpleStateProvider(Blocks.OAK_SAPLING.defaultBlockState()),
										new BlobFoliagePlacer(ConstantInt.of(2), ConstantInt.of(0), 3), new TwoLayersFeatureSize(1, 0, 1)))
												.decorators(ImmutableList.of(BlightLeaveDecorator.INSTANCE, BlightTrunkDecorator.INSTANCE)).build())
								.decorated(Features.Decorators.HEIGHTMAP_SQUARE)
								.decorated(FeatureDecorator.COUNT_EXTRA.configured(new FrequencyWithExtraChanceDecoratorConfiguration(5, 0.1F, 1)))));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
				register("grass",
						Feature.RANDOM_PATCH.configured(Features.Configs.DEFAULT_GRASS_CONFIG).decorated(Features.Decorators.HEIGHTMAP_DOUBLE_SQUARE)
								.decorated(FeatureDecorator.COUNT_NOISE.configured(new NoiseDependantDecoratorConfiguration(-0.8D, 5, 14)))));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION, register("seagrass", Feature.SEAGRASS
				.configured(new ProbabilityFeatureConfiguration(0.3F)).count(14).decorated(Features.Decorators.TOP_SOLID_HEIGHTMAP_SQUARE)));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
				register("brown_mushroom",
						Feature.RANDOM_PATCH.configured((new RandomPatchConfiguration.GrassConfigurationBuilder(
								new SimpleStateProvider(Blocks.BROWN_MUSHROOM.defaultBlockState()), SimpleBlockPlacer.INSTANCE)).tries(180)
										.noProjection().build())));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
				register("red_mushroom",
						Feature.RANDOM_PATCH.configured((new RandomPatchConfiguration.GrassConfigurationBuilder(
								new SimpleStateProvider(Blocks.RED_MUSHROOM.defaultBlockState()), SimpleBlockPlacer.INSTANCE)).tries(180)
										.noProjection().build())));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
				register("brown_mushroom_huge",
						Feature.HUGE_BROWN_MUSHROOM.configured(new HugeMushroomFeatureConfiguration(
								new SimpleStateProvider(Blocks.BROWN_MUSHROOM_BLOCK.defaultBlockState().setValue(HugeMushroomBlock.UP, Boolean.TRUE)
										.setValue(HugeMushroomBlock.DOWN, Boolean.FALSE)),
								new SimpleStateProvider(Blocks.MUSHROOM_STEM.defaultBlockState().setValue(HugeMushroomBlock.UP, Boolean.FALSE)
										.setValue(HugeMushroomBlock.DOWN, Boolean.FALSE)),
								9))));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION, register("red_mushroom_huge",
				Feature.HUGE_RED_MUSHROOM.configured(new HugeMushroomFeatureConfiguration(
						new SimpleStateProvider(Blocks.RED_MUSHROOM_BLOCK.defaultBlockState().setValue(HugeMushroomBlock.DOWN, Boolean.FALSE)),
						new SimpleStateProvider(Blocks.MUSHROOM_STEM.defaultBlockState().setValue(HugeMushroomBlock.UP, Boolean.FALSE)
								.setValue(HugeMushroomBlock.DOWN, Boolean.FALSE)),
						9))));
		biomeGenerationSettings.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION, register("patch_sugar_cane",
				Feature.RANDOM_PATCH.configured(Features.Configs.SUGAR_CANE_CONFIG).decorated(Features.Decorators.HEIGHTMAP_DOUBLE_SQUARE).count(8)));
		biomeGenerationSettings
				.addFeature(GenerationStep.Decoration.VEGETAL_DECORATION,
						register("patch_cactus",
								Feature.RANDOM_PATCH.configured((new RandomPatchConfiguration.GrassConfigurationBuilder(
										new SimpleStateProvider(Blocks.CACTUS.defaultBlockState()), new ColumnPlacer(BiasedToBottomInt.of(1, 2))))
												.tries(8).noProjection().build())));
		BiomeDefaultFeatures.addDefaultCarvers(biomeGenerationSettings);
		BiomeDefaultFeatures.addDefaultOres(biomeGenerationSettings);
		BiomeDefaultFeatures.addSurfaceFreezing(biomeGenerationSettings);
		BiomeDefaultFeatures.addFossilDecoration(biomeGenerationSettings);
		BiomeDefaultFeatures.addInfestedStone(biomeGenerationSettings);
		BiomeDefaultFeatures.addDefaultSeagrass(biomeGenerationSettings);
		BiomeDefaultFeatures.addMossyStoneBlock(biomeGenerationSettings);
		BiomeDefaultFeatures.addDripstone(biomeGenerationSettings);
		BiomeDefaultFeatures.addSurfaceFreezing(biomeGenerationSettings);
		BiomeDefaultFeatures.addDefaultCarvers(biomeGenerationSettings);
		BiomeDefaultFeatures.addSwampClayDisk(biomeGenerationSettings);
		BiomeDefaultFeatures.addDefaultMonsterRoom(biomeGenerationSettings);
		BiomeDefaultFeatures.addSwampClayDisk(biomeGenerationSettings);
		MobSpawnSettings.Builder mobSpawnInfo = new MobSpawnSettings.Builder().setPlayerCanSpawn();
		mobSpawnInfo.addSpawn(MobCategory.MONSTER, new MobSpawnSettings.SpawnerData(EntityType.VEX, 20, 4, 4));
		mobSpawnInfo.addSpawn(MobCategory.MONSTER, new MobSpawnSettings.SpawnerData(EntityType.ZOMBIE, 20, 4, 4));
		mobSpawnInfo.addSpawn(MobCategory.MONSTER, new MobSpawnSettings.SpawnerData(EntityType.ILLUSIONER, 20, 4, 4));
		mobSpawnInfo.addSpawn(MobCategory.MONSTER, new MobSpawnSettings.SpawnerData(EntityType.SILVERFISH, 20, 4, 4));
		return new Biome.BiomeBuilder().precipitation(Biome.Precipitation.RAIN).biomeCategory(Biome.BiomeCategory.NONE).depth(0.1f).scale(0.2f)
				.temperature(0.5f).downfall(0.5f).specialEffects(effects).mobSpawnSettings(mobSpawnInfo.build())
				.generationSettings(biomeGenerationSettings.build()).build();
	}

	public static void init() {
		Registry.register(BuiltinRegistries.CONFIGURED_SURFACE_BUILDER, new ResourceLocation(McaMod.MODID, "blight"), SURFACE_BUILDER);
		CONFIGURED_FEATURES.forEach((resourceLocation, configuredFeature) -> Registry.register(BuiltinRegistries.CONFIGURED_FEATURE, resourceLocation,
				configuredFeature));
		BiomeDictionary.addTypes(ResourceKey.create(Registry.BIOME_REGISTRY, BuiltinRegistries.BIOME.getKey(McaModBiomes.BLIGHT)),
				BiomeDictionary.Type.MAGICAL);
	}

	private static final Map<ResourceLocation, ConfiguredFeature<?, ?>> CONFIGURED_FEATURES = new HashMap<>();

	private static ConfiguredFeature<?, ?> register(String name, ConfiguredFeature<?, ?> configuredFeature) {
		CONFIGURED_FEATURES.put(new ResourceLocation(McaMod.MODID, name + "_blight"), configuredFeature);
		return configuredFeature;
	}
}
