package cs4120.der34dlc287lg342.xi.cfg;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;

import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public class VariablePropagation {
	CFG node;
	ArrayList<CFG> worklist;
	public VariablePropagation(CFG node){
		this.node = node;
		worklist = new ArrayList<CFG>();
		make_worklist(node, new HashSet<CFG>());
	}
	
	public void make_worklist(CFG node, HashSet<CFG> seen){
		if (node == null) return;
		if (seen.contains(node)) return;
		seen.add(node);
		
		worklist.add(node);
		
		for (CFG next : node.succ())
			make_worklist(next, seen);
	}
	
	public static HashSet<Move> in(CFG node){
		HashSet<Move> intersect = null;
		for (CFG prev : node.pred()){
			if (intersect == null) 
				intersect = new HashSet<Move>(prev.out_copy);
			else{
				intersect = CFG.intersect(prev.out_copy, intersect);
			}
		}
		return intersect == null ? new HashSet<Move>() : intersect;
	}
	
	public TempRegister get_alias(Hashtable<TempRegister, TempRegister> aliases, TempRegister key){
		if (aliases.containsKey(key)){
			return get_alias(aliases, aliases.get(key));
		}
		return key;
	}
	
	public void analyze(){
		// one step for now
		while (!worklist.isEmpty()){
			CFG node = worklist.get(0);
			worklist.remove(0);
			
			// check available exprs
			ArrayList<Move> copies_in = new ArrayList<Move>(in(node));
			while (!copies_in.isEmpty()){
				Move move = copies_in.get(0);
				copies_in.remove(0);
				ArrayList<CFG> chain = new ArrayList<CFG>();
				make_chain(node, move, chain, new HashSet<CFG>());
				if (chain.size() > 0){
					Expr from = move.dest, to = move.val;
					for (CFG el : chain){
						el.ir.replace(from, to);
					}
					//node.out_copy.remove(move);
				}
			}
		}
	}
	
	public void remove_register(CFG node, TempRegister r){
//		for (Move m : new ArrayList<Move>(arr)){
//			if (((Temp)m.dest).temp.equals(r) || (m.val instanceof Temp && ((Temp)m.val).temp.equals(r)))
//				arr.remove(m);
//		}
	}
	
	public void make_chain(CFG node, Move move, ArrayList<CFG> chain, HashSet<CFG> seen){
		if (seen.contains(node))
			return;
		seen.add(node);
		Temp copy = (Temp)move.dest;
		//boolean contains = node.ir.contains(copy);
		if (in(node).contains(move) &&  node.ir.contains(copy)){
			chain.add(node);
			for (CFG next : node.succ()){
				make_chain(next, move, chain, seen);
			}
		}
		
	}
}
