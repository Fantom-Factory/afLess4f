
class TestBootstrap : Test {
	
	Void testBootstrap() {
		Main().main("""-x C:\\Projects\\Fantom-Factory\\PodRepo\\etc\\less\\website.less C:\\Projects\\Fantom-Factory\\PodRepo\\etc\\web-static\\css\\website.min.css""".split)
//		Main().main("""   C:\\Projects\\Fantom-Factory\\PodRepo\\etc\\less\\website.less C:\\Projects\\Fantom-Factory\\PodRepo\\etc\\web-static\\css\\website.min.css""".split)
		
		css := File.os("C:\\Projects\\Fantom-Factory\\PodRepo\\etc\\web-static\\css\\website.min.css").readAllStr
		echo("CSS:")
		echo(css)
	}
}
