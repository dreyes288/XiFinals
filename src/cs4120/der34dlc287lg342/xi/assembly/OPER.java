package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class OPER extends Assembly {
	TempRegister dest;
	TempRegister src[];
	Label jump_to;
	
	public OPER(String assem, TempRegister dest, TempRegister src[], Label to){
		this.assem = assem;
		this.dest = dest;
		this.src = src;
		this.jump_to = to;
	}
	
	public OPER(String assem, TempRegister dest, TempRegister src[]){
		this(assem, dest, src, null);
	}
	
	public OPER(String assem, TempRegister src1, TempRegister src2, Label to){
		this(assem, null, new TempRegister[]{src1, src2}, to);
	}
	
	public OPER(String assem, TempRegister dest, TempRegister src){
		this(assem, dest, new TempRegister[]{src}, null);
	}
	
	@Override
	public HashSet<TempRegister> use() {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		for (TempRegister s : src)
			set.add(s);
		return set;
	}

	@Override
	public HashSet<TempRegister> def() {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		set.add(dest);
		return set;
	}

	@Override
	public Label jump() {
		return jump_to;
	}

}
