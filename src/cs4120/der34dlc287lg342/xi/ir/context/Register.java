package cs4120.der34dlc287lg342.xi.ir.context;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;

public class Register {
	static public int global = 0;
	public int value;
	public String name;
	
	static public Register Null = new Register("Null");
	static public Register FP = new Register("fp"); // frame pointer, rsp
	static public Register RV = new Register("rv"); // return value register, rax
	
	public Register(boolean heap){
		value = global++;
		this.name = "" + value;
	}
	
	public Register(String name){
		this(false);
		this.name = name;
	}
	
	public Register(){
		this(false);
	}
	
	public int value(){
		return value;
	}
	
	public String toString(){
		return "r("+name+")";
	}
	
	public static Seq init_array(Expr base, Expr n){
		Temp p = new Temp(new Register());
		Call ptr = new Call(new Name(Label.alloc), new Binop(Binop.LSH, new Binop(Binop.PLUS, n, new Const(1)), new Const(3)));
		
		return new Seq(new Move(p, ptr), new Move(p, n), new Move(base, new Binop(Binop.PLUS, p, new Const(8))));
	}
	
	public static Eseq size_of(Expr base_expr){
		/*
		 * Cjump[cond:(base == null)][iftrue:8][iffalse:9]
		 * LabelNode[label:8]
		 * Exp[expr:call[error=[]]]
		 * LabelNode[label:9]
		 * Move[dest:r(#)][src:Mem[(base - 8)]]
		 */
		Label iftrue = new Label(), iffalse = new Label();
		Temp size = new Temp(new Register()), base = new Temp(new Register());
		Seq seq = new Seq(
			
			new Cjump(new Binop(Binop.EQ, base, new Temp(null)), iftrue, iffalse),
			new LabelNode(iftrue),
			new Exp(new Call(new Name(Label.outOfBounds))),
			new LabelNode(iffalse),
			new Move(size, new Mem(new Binop(Binop.MINUS, base, new Const(8))))
		);
		
		return new Eseq(size, seq);
	}
}
