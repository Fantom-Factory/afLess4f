using util

** Runs Less4f from the command line.
** 
**   C:\> fan afLess4j [-x] <lessIn> <cssOut>
** 
** Where 'lessIn' and 'cssOut' are files. OS dependent and / or URI notation may be used. Example:
** 
**   C:\> fan afLess4j -x C:\projects\website.less C:\projects\website.css
** 
**   C:\> fan afLess4j -x file:/C:/projects/website.less file:/C:/projects/website.css
** 
class Main : AbstractMain {

	@Opt { aliases=["x"]; help="Compresses the generated CSS" }
	private Bool compress

	@Arg { help="The .less input file" }
	private File? lessIn

	@Arg { help="The .css output file" }
	private File? cssOut

	@NoDoc
	override Int run() {
		log := typeof.pod.log
		
		log.info("Compiling `${lessIn.normalize.osPath}` to `${cssOut.normalize.osPath}`")
		LessCompiler().compile(lessIn, cssOut, compress)
		log.info("Done.")
		
		return 0
	}
}
