package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class CallArgsNode implements AbstractSyntaxNode {

	protected Position position;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	public CallArgsNode(Position position){
		this.position = position;
	}
	
	public void add(AbstractSyntaxNode expr){
		children.add(expr);
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}

	@Override
	public String label() {
		String s = "";
		for (VisualizableTreeNode e : children){
			s += e.label()+",";
		}
		return s;
	}

}