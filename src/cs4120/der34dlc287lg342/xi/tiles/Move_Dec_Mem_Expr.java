package cs4120.der34dlc287lg342.xi.tiles;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.assembly.OPER;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class Move_Dec_Mem_Expr extends Tile {
	Tile expr;
	
	public Move_Dec_Mem_Expr(Tile expr) {
		this.expr = expr;
	}
	
	public ArrayList<Assembly> att() {
//		String asm = "";
//		if (expr instanceof ConstTile) {
//			asm += "decq " + ((ConstTile)expr).value;
//		} else {
//			asm += "decq " + "(" + expr.out + ")";
//		} 
		
		ArrayList<Assembly> asm = new ArrayList<Assembly>();
		asm.addAll(expr.att());
		asm.add(new OPER("decq (%s0)", expr.out, null));
		return asm;
	}
}
