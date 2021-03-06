package cs4120.der34dlc287lg342.xi.assembly;

import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class MOVE extends Assembly {
	public TempRegister src, dest;
	public MOVE(TempRegister src, TempRegister dest){
		this.assem = "movq %s0, %d0";
		this.src = src;
		this.dest = dest;
	}
	@Override
	public HashSet<TempRegister> use() {
		HashSet<TempRegister> set = new HashSet<TempRegister>();
		set.add(src);
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
		return null;
	}

	
	public String simple_assem(Hashtable<TempRegister, Integer> coloring) {
		String assem = super.simple_assem(coloring);
		
		return assem.replace("%d0", ""+machine_register(coloring, dest)).replace("%s0", ""+machine_register(coloring, src));
	}
}
