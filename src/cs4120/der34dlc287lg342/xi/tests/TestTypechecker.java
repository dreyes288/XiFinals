package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestTypechecker extends TestCase {

	public Parser gen(String code){
		Reader reader = new StringReader(code);
		return new XiParser(reader);
	}
	
	public void testXiTypechecker() {
		AbstractSyntaxNode ast = gen("use io main(a:int,b:int[][3]):int[2][]{c:int, _ = f();} \nf():int,bool{return 1,true}").parse();
		try {
			XiTypechecker tc = new XiTypechecker(ast);
			//System.out.println(XiTypechecker.globalContext.symbols);
			tc.typecheck();
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}

}