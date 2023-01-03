using afxLspFantom

@NoDoc
class Main : LspFantomCli {
	override Int run() {
		LspFantomLib.bootstrap
		return super.run
	}
}


// java -cp C:\Projects\FantomFactory-Experimental\LSP-StarLord\dist\lib\java\sys.jar -Dfan.home=C:\Projects\FantomFactory-Experimental\LSP-StarLord\dist  fanx.tools.Fan afxStarLord