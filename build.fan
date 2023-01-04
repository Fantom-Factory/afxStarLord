using build:: BuildPod

class Build : BuildPod {

	new make() {
		podName = "afxStarLord"
		summary = "Language Server Protocol (LSP) for Fantom"
		version = Version("0.0.2")

		meta = [
			"pod.dis"		: "Language Server Protocol (LSP) for Fantom",
			"repo.tags"		: "system",
			"repo.public"	: "true",
		]

		index = [
			"afx.libDef"	: [
				"afxStarLord::LspLib",
				"afxStarLord::LspFantomLib",
			],
		]

		depends = [
			// ---- Fantom Core -----------------
			"sys          1.0.77 - 1.0",

			// ---- Fantom Factory --------------
			"afxLspFantom 0.0.1  - 0.1",
			"afJson       2.0.15 - 2.0",	// **** non-conflicting sys::Range using statements
		]
 
		srcDirs = [`fan/`]
		resDirs = [`doc/`]

		docApi = false
		docSrc = false

		meta["afBuild.docApi"]			= "false"
		meta["afBuild.docSrc"]			= "false"
		meta["afBuild.skipReadmeMd"]    = "false"
		meta["afBuild.testPods"]  		= ""
		meta["afBuild.uberMe"] 			= "true"
		meta["afBuild.uberPod"] 		= "afx afxLsp afxLspFantom afJson afJsonRpc afConcurrent afBeanUtils"
		meta["afBuild.removeJs"]  		= "true"
		meta["afBuild.keepApiDocs"]		= ""
	}
}
