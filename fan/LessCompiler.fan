using [java]com.github.sommeri.less4j.core::ThreadUnsafeLessCompiler
using [java]com.github.sommeri.less4j::LessCompiler$Configuration as Configuration
using [java]com.github.sommeri.less4j::LessCompiler$Problem as Problem
using [java]fanx.interop::Interop

** The wrapper around Less4j.
class LessCompiler {
	
	** Compiles the .less file to .css file.
	Void compileFile(File lessIn, File cssOut, Bool compress) {
		compiler := ThreadUnsafeLessCompiler()
		result	 := compiler.compile(Interop.toJava(lessIn.normalize), Configuration().setCompressing(compress))
		
		Interop.toFan(result.getWarnings).each |Obj o| {
			Problem p := o
			echo("WARNING ${p.getLine}:${p.getCharacter} ${p.getMessage}")			
		}

		cssOut.out.writeChars(result.getCss).close
	}

	** Compiles the .less string to a .css string.
	Str compileStr(Str lessIn, Bool compress) {
		compiler := ThreadUnsafeLessCompiler()
		result	 := compiler.compile(lessIn, Configuration().setCompressing(compress))
		
		Interop.toFan(result.getWarnings).each |Obj o| {
			Problem p := o
			echo("WARNING ${p.getLine}:${p.getCharacter} ${p.getMessage}")			
		}

		return result.getCss
	}
}
