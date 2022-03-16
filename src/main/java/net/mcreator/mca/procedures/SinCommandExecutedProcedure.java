package net.mcreator.mca.procedures;

import java.util.HashMap;

public class SinCommandExecutedProcedure {
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
		}.convert(cmdparams.containsKey("1") ? cmdparams.get("1").toString() : "");
		return 100 * Math.sin(0.0005 * out);
	}
}
