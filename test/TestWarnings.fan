using [java] com.github.sommeri.less4j::Less4jException

class TestWarnings : Test {
	
	Void testErrors() {
		verifyErr(Less4jException#) {			
			LessCompiler().compileStr("whoops", false)
		}
	}
}
