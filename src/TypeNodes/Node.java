package TypeNodes;

public class Node {
    private NodeType type;
    public String whoami;

    public Node(NodeType type) {
        this.type = type;
    }

    public NodeType getType() {
        return type;
    }

    public String whoami() {
        return whoami;
    }
}
