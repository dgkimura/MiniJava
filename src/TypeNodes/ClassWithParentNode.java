package TypeNodes;

import java.util.HashMap;
import java.util.Map;

public class ClassWithParentNode extends ClassNode {
    private String parent;

    public ClassWithParentNode(String name, String parent) {
        super(name);
        this.parent = parent;
    }

    public String getParent() {
        return parent;
    }
}
