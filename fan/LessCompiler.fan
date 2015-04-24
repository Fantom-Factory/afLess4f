using [java]com.github.sommeri.less4j.core::ThreadUnsafeLessCompiler
using [java]com.github.sommeri.less4j::LessCompiler$Configuration as Configuration
using [java]com.github.sommeri.less4j::LessCompiler$Problem as Problem
using [java]fanx.interop::Interop

** The wrapper around Less4j.
class LessCompiler {
	
	** Compiles the .less file to .css file
	Void compile(File lessIn, File cssOut, Bool compress) {
				
		compiler := ThreadUnsafeLessCompiler()
		result	 := compiler.compile(Interop.toJava(lessIn.normalize), Configuration().setCompressing(compress))
		
		Interop.toFan(result.getWarnings).each |Obj o| {
			p := (Problem) o	// TODO: log fantom
			echo("WARNING ${p.getLine}:${p.getCharacter} ${p.getMessage}")
		}

		cssOut.out.writeChars(result.getCss).close
	}
}
