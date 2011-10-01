package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class FuncCallNode extends ExpressionNode {

	protected Position position;
	protected AbstractSyntaxNode id;
	protected ArrayList<VisualizableTreeNode> children, args;
	public FuncCallNode(IdNode id, ArrayList<VisualizableTreeNode> args, Position position){
		this.id = id;
		this.args = args;
		this.position = position;
		children = new ArrayList<VisualizableTreeNode>();
		children.add(id);
		children.addAll(args);
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
		return "CALL("+args.size()+")";
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException{
		IdNode id = (IdNode)this.id;
		try {
			XiType t = stack.find_id(id.id);
			return t;
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
	}
}
