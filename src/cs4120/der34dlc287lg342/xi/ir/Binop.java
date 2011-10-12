package cs4120.der34dlc287lg342.xi.ir;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;

public class Binop extends Expr {
	public static int PLUS = 0;
	public static int MINUS = 1;
	public static int MUL = 2;
	public static int DIV = 3;
	public static int MOD = 4;
	
	public static int AND = 5;
	public static int OR = 6;
	public static int XOR = 7;
	
	public static int LSH = 8;
	public static int RSH = 9;
	public static int ARSH = 10; // rshift preserving signedness (SAR in mnemonics)
	
	// relational operators
	public static int EQ = 11;
	public static int NE = 12;
	public static int LT = 13;
	public static int GT = 14;
	public static int LE = 15;
	public static int GE = 16;
	
	public static int translate(String s){
		if (s.equals("PLUS"))
			return PLUS;
		else if (s.equals("MINUS"))
			return MINUS;
		else if (s.equals("TIMES"))
			return MUL;
		else if (s.equals("DIVIDE"))
			return DIV;
		else if (s.equals("MODULO"))
			return MOD;
		else if (s.equals("AND"))
			return AND;
		else if (s.equals("OR"))
			return OR;
		else if (s.equals("EQUAL"))
			return EQ;
		else if (s.equals("NOT_EQUAL"))
			return NE;
		else if (s.equals("LT"))
			return LT;
		else if (s.equals("GT"))
			return GT;
		else if (s.equals("LEQ"))
			return LE;
		else if (s.equals("GEQ"))
			return GE;
		return -1;
	}
	
	public Expr left, right;
	public int op;
	
	public Binop(int op, Expr left, Expr right){
		super();
		this.op = op;
		this.left = left;
		this.right = right;
		children.add(left);
		children.add(right);
	}
	
	public Binop(String op, Expr left, Expr right){
		this(translate(op), left, right);
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}

	@Override
	public String label() {
		return "binop";
	}
}
