package net.mcreator.mca.procedures;

import org.ini4j.Ini;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import java.io.BufferedWriter;

import net.minecraftforge.fml.event.lifecycle.FMLDedicatedServerSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.eventbus.api.Event;
import net.minecraftforge.api.distmarker.Dist;

import net.mcreator.mca.network.McaModVariables;
import net.mcreator.mca.McaMod;

import javax.annotation.Nullable;
import net.minecraftforge.fml.config.ConfigTracker;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD, value = {Dist.DEDICATED_SERVER})
public class GetConfigProcedure {
	@SubscribeEvent
	public static void init(FMLDedicatedServerSetupEvent event) {
		execute();
	}

	public static int regulationModifier = 8;
	public static int aliveDecayTps = 1;
	public static int enableThirst = 1;
	public static int enableStamina = 1;
	public static int enableInsomnia = 1;
	public static int enableAddrenalin = 1;
	public static int enableLowHealthEffects = 1;
	public static int enableDrowningEffects = 1;
	public static int enableDisease = 1;
	public static int enableBlockDecay = 1;
	public static int enableTreeDynamics = 1;
	public static int enablePlantDynamics = 1;
	public static int enableEntityDynamics = 1;
	public static int enablePaths = 1;
	public static int enableProgression = 1;
	public static int enableSawayigs = 1;
	public static int enableMyddraal = 1;
	public static int enableAdvancedCreeperAI = 1;
	public static int enableEndCrystalMechanics = 1;
	public static int enableAdvancedEndermanAI = 1;
	public static int enableCubeEntityEffects = 1;
	public static int enableGates = 1;
	public static int enableMachinShin = 1;
	public static int enableBodies = 1;
	public static int enableMedicine = 1;
	public static int enableTheForestMode = 0;

	public static final String config = "\\config\\alive\\main.cfg";

	public static final String configStr = "[main]\nfound = \"we are ALIVE!!!\"\nregulationModifier = 8\n#\t^^^ regulationModifier controls how much lag needs to occur before Alive will start to switch off or limit features to try to return to 20tps. Note: higher values are extremely laggy!!!\naliveDecayTps = 1\n#   ^^^ aliveDecayTps controls how fast Alive will perform block decay and global ecosystem operations (such as tree regrowth). This is good for quickly decaying sections of a map for Map Making! Note: higher values are laggy!!!\n\n# Note: enable<effecttype>, 1 = True, 0 = False\n[effects]\nenableThirst = 1\nenableStamina = 1\nenableInsomnia = 1\n#\t^^^ sets insomnia score to always 0. (as in, makes it so its always as if you just slept)\nenableAddrenalin = 1\nenableLowHealthEffects = 1\nenableDrowningEffects = 1\nenableDisease = 1\n\n# Note: enable<effecttype>, 1 = True, 0 = False\n[nature]\nenableBlockDecay = 1\nenableTreeDynamics = 1\nenablePlantDynamics = 1\nenableEntityDynamics = 1\nenablePaths = 1\n\n# Note: enable<effecttype>, 1 = True, 0 = False\n[boss]\nenableProgression = 1\n#\t^^^ disabling this will entirely disable this part of the mod. Note: doing this does not remove bosses from the game! This will only allow vannilla boss integration!\n\n[extras]\nenableSawayigs = 1\n#   ^^^ disabling this will prevent \"Sawayigs\" from spawning, Note: sawayigs are important for boss progression mechanics, if this is disabled, \n#\t\tthe only option for spawning the fire key will require the wither to be spawned first! (as a wither rose is required!)\nenableMyddraal = 1\n#\t^^^ disabling this will prevent Myddraal from spawning in within mountain ranges. This does not impact performance nor any other vanilla mechanics. (Note: disabling this will prevent access to the spell allowing you to respawn waygates!)\nenableAdvancedCreeperAI = 1\n#\t^^^ enables creeper effects (such as exploding when they are lit on fire or walk on redstone)\nenableEndCrystalMechanics = 1\n#   ^^^ makes phantoms spawn when an end crystal is destroyed, credit goes to Fundy for this one lmao\nenableAdvancedEndermanAI = 1\n#\t^^^ makes enderman create rebounding effects when they jump or teleport that cause all surrounding mobs to gain levitation\nenableCubeEntityEffects = 1\n#\t^^^ makes slimes grow when in water, shrink slowly when out, and explode + fly when lit on fire, vise versa for magma cubes, but they explode in water instead!\n \n [ways]\nenableGates = 1\n#\t^^^ disabling this will prevent the spawning of waygates within the world. Waygates spawn in a grid pattern based on the seed in intervals around the world.\nenableMachinShin = 1\n#\t^^^ as a nod to the original inspiration for these features, the ways contains an anchient wind called \"machin shin\", sometimes known as the black wind. If you get swept up in it, you may be driven insane... or die?\n#\t    disabling this prevents machin shin events from occuring.\n#\t    also to the creator of the waystones mod, there called portal stones ya corndog! lmao, they have little to do with the ways!\n#\t    https://wot.fandom.com/wiki/Portal_Stone\n\n[other]\nenableBodies = 1\n#\t^^^ disabling this prevents bodys from spawning upon player death\nenableMedicine = 1\n#   ^^^ disabling this does not prevent players from using medicine, it only diables the medicines functionality in counteracting diseases.\n\n[fun]\nenableTheForestMode = 0\n#\t^^^ enabling this will cause the player to spawn into a plane when the game starts. This plane will eventually explode and destroy itself midair (includes accompanying audio!)\n#\t    WARNING: This feature is currently in alpha, it may contain bugs that may/may not be game breaking.\n\n# Coming soon to fun:\n#\tEnd of the world mode!\n#\tRealistic silverfish! (LMFAO!!!! https://youtu.be/I60Uivwi12o?t=1219)\n#\tmore soon ;)\n\n";

	public static String getKey(String path, String pointer, String key) {
		try {
			String filename = path;
	        Ini ini = new Ini(new FileReader(filename));
	    	String out = ini.get(pointer, key);
	    	return out;
		} catch (Exception e) {
	    	McaMod.LOGGER.error(e);
	    	return "0";
	    }
	}

	public static void saveFile(String fileName, String str) {
		try {
		    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName));
		    writer.write(str);
		    writer.close();
		} catch (Exception e) {
			McaMod.LOGGER.error(e);
		}
	}

	public static void setKey(String path, String pointer, String key, String val) {
		try {
			String filename = path;
	        Ini ini = new Ini(new FileReader(filename));
	    	ini.put(pointer, key, val);
	    	ini.store();
		} catch (Exception e) {
			McaMod.LOGGER.error(e);
		}
	}

	public static boolean fileExists(String path) {
		try {
			File f = new File(path);
			if(f.exists() && !f.isDirectory()) { 
			    return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			McaMod.LOGGER.error(e);
			return false;
		}
	}

	public static void createBlank(String path) {
		try {
			File file = new File(path);
        	file.createNewFile();
		} catch (Exception e) {
			McaMod.LOGGER.error(e);
		}
	}

	public static void createDir(String path) {
		File theDir = new File(path);
		if (!theDir.exists()){
		    theDir.mkdirs();
		}
	}

	public static void execute() {
		execute(null);
	}

	private static void execute(@Nullable Event event) {

		McaMod.LOGGER.info("Working Directory = " + System.getProperty("user.dir"));

		int n;

		// File Managment
		if (fileExists(System.getProperty("user.dir") + config)) {
			McaMod.LOGGER.info("in file: " + getKey(System.getProperty("user.dir") + config, "main", "found"));
		} else {
			n = 0;
			while (!fileExists(System.getProperty("user.dir") + config) && n < 10) {
				createDir(System.getProperty("user.dir") + "\\config\\alive");
				createBlank(System.getProperty("user.dir") + config);
				saveFile(System.getProperty("user.dir") + config, configStr);
				McaMod.LOGGER.info("in file: " + getKey(System.getProperty("user.dir") + config, "main", "found"));
				n = n + 1;
			}
		}

		// set variables from config
		regulationModifier = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "main", "regulationModifier"));
		aliveDecayTps = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "main", "aliveDecayTps"));
		enableThirst = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableThirst"));
		enableStamina = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableStamina"));
		enableInsomnia = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableInsomnia"));
		enableAddrenalin = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableAddrenalin"));
		enableLowHealthEffects = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableLowHealthEffects"));
		enableDrowningEffects = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableDrowningEffects"));
		enableDisease = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "effects", "enableDisease"));
		enableBlockDecay = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "nature", "enableBlockDecay"));
		enableTreeDynamics = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "nature", "enableTreeDynamics"));
		enablePlantDynamics = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "nature", "enablePlantDynamics"));
		enableEntityDynamics = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "nature", "enableEntityDynamics"));
		enablePaths = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "nature", "enablePaths"));
		enableProgression = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "boss", "enableProgression"));
		enableSawayigs = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableSawayigs"));
		enableMyddraal = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableMyddraal"));
		enableAdvancedCreeperAI = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableAdvancedCreeperAI"));
		enableEndCrystalMechanics = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableEndCrystalMechanics"));
		enableAdvancedEndermanAI = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableAdvancedEndermanAI"));
		enableCubeEntityEffects = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "extras", "enableCubeEntityEffects"));
		enableGates = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "ways", "enableGates"));
		enableMachinShin = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "ways", "enableMachinShin"));
		enableBodies = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "other", "enableBodies"));
		enableMedicine = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "other", "enableMedicine"));
		enableTheForestMode = Integer.parseInt(getKey(System.getProperty("user.dir") + config, "fun", "enableTheForestMode"));

		// Log variables for debug
		McaMod.LOGGER.info("Alive config option regulationModifier is set to " + regulationModifier + ";");
		McaMod.LOGGER.info("Alive config option aliveDecayTps is set to " + aliveDecayTps + ";");
		McaMod.LOGGER.info("Alive config option enableThirst is set to " + enableThirst + ";");
		McaMod.LOGGER.info("Alive config option enableStamina is set to " + enableStamina + ";");
		McaMod.LOGGER.info("Alive config option enableInsomnia is set to " + enableInsomnia + ";");
		McaMod.LOGGER.info("Alive config option enableAddrenalin is set to " + enableAddrenalin + ";");
		McaMod.LOGGER.info("Alive config option enableLowHealthEffects is set to " + enableLowHealthEffects + ";");
		McaMod.LOGGER.info("Alive config option enableDrowningEffects is set to " + enableDrowningEffects + ";");
		McaMod.LOGGER.info("Alive config option enableDisease is set to " + enableDisease + ";");
		McaMod.LOGGER.info("Alive config option enableBlockDecay is set to " + enableBlockDecay + ";");
		McaMod.LOGGER.info("Alive config option enableTreeDynamics is set to " + enableTreeDynamics + ";");
		McaMod.LOGGER.info("Alive config option enablePlantDynamics is set to " + enablePlantDynamics + ";");
		McaMod.LOGGER.info("Alive config option enableEntityDynamics is set to " + enableEntityDynamics + ";");
		McaMod.LOGGER.info("Alive config option enablePaths is set to " + enablePaths + ";");
		McaMod.LOGGER.info("Alive config option enableProgression is set to " + enableProgression + ";");
		McaMod.LOGGER.info("Alive config option enableSawayigs is set to " + enableSawayigs + ";");
		McaMod.LOGGER.info("Alive config option enableMyddraal is set to " + enableMyddraal + ";");
		McaMod.LOGGER.info("Alive config option enableAdvancedCreeperAI is set to " + enableAdvancedCreeperAI + ";");
		McaMod.LOGGER.info("Alive config option enableEndCrystalMechanics is set to " + enableEndCrystalMechanics + ";");
		McaMod.LOGGER.info("Alive config option enableAdvancedEndermanAI is set to " + enableAdvancedEndermanAI + ";");
		McaMod.LOGGER.info("Alive config option enableCubeEntityEffects is set to " + enableCubeEntityEffects + ";");
		McaMod.LOGGER.info("Alive config option enableGates is set to " + enableGates + ";");
		McaMod.LOGGER.info("Alive config option enableMachinShin is set to " + enableMachinShin + ";");
		McaMod.LOGGER.info("Alive config option enableBodies is set to " + enableBodies + ";");
		McaMod.LOGGER.info("Alive config option enableMedicine is set to " + enableMedicine + ";");
		McaMod.LOGGER.info("Alive config option enableTheForestMode is set to " + enableTheForestMode + ";");
		
	}
}
