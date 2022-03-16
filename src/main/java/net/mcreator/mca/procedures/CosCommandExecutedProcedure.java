package net.mcreator.mca.procedures;

import java.util.HashMap;
import java.lang.Math;


public class CosCommandExecutedProcedure {
	public static double execute(HashMap cmdparams) {
		if (cmdparams == null)
			return 0;
		double in = 0;
		double out = new Object() {
			double convert(String s) {
				try {
					return Double.parseDouble(s.trim());
				} catch (Exception e) {
				}
				return 0;
			}
		}.convert(cmdparams.containsKey("0") ? cmdparams.get("0").toString() : "");
		return 100 * Math.cos(0.0005 * out);
	}
}
