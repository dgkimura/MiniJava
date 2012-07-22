package TypeNodes;

import java.util.*;

public class MethodNode extends Node {
    private List<Node> parameters;
    private Map<Integer, String> parameterPositions;

    private Map<String, Node> localVariables;
    private Node returnType;

    public MethodNode(Node returnType) {
        super(NodeType.METHOD);

        parameters = new ArrayList<Node>();
        parameterPositions = new HashMap<Integer, String>();
        localVariables = new HashMap<String, Node>();
        this.returnType = returnType;
    }

    public List<Node> getParameters() {
        return parameters;
    }

    public Map<Integer, String> getParameterPositions() {
        return parameterPositions;
    }

    public Map<String, Node> getLocalVariables() {
        return localVariables;
    }

    public Node getReturnType() {
        return returnType;
    }
}
