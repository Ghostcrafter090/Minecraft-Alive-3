package net.mcreator.mca.procedures;

import java.awt.Desktop;
import java.net.URI;
import java.lang.Runtime;
import java.lang.StringBuffer;

import net.mcreator.mca.McaMod;

public class ChannelLinkProcedure {

	public static String channel = "https://www.youtube.com/channel/UCNVTK59xpYFQBZG9kSHMzRA";

	public static void execute() {
		try {
			Runtime rt = Runtime.getRuntime();
			rt.exec("rundll32 url.dll,FileProtocolHandler " + channel);
		}
		catch(Exception ea) {
			try {
				Runtime rt = Runtime.getRuntime();
				rt.exec("open " + channel);
			}
			catch(Exception eb) {
				try {
					Runtime rt = Runtime.getRuntime();
					String[] browsers = { "google-chrome", "firefox", "mozilla", "epiphany", "konqueror", "netscape", "opera", "links", "lynx" };
					StringBuffer cmd = new StringBuffer();
					for (int i = 0; i < browsers.length; i++)
					    if(i == 0)
					        cmd.append(String.format(    "%s \"%s\"", browsers[i], channel));
					    else
					        cmd.append(String.format(" || %s \"%s\"", browsers[i], channel)); 
					rt.exec(new String[] { "sh", "-c", cmd.toString() });
				}
				catch(Exception ec) {
					McaMod.LOGGER.info("[Alive] ::: Error: Unable to open channel link in default broswer.");
				}
			}
		}
	}
}
