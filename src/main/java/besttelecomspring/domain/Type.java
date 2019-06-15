package besttelecomspring.domain;

import java.io.Serializable;

public class Type implements Serializable {

    private static final long serialVersionUID = 2562733207458350979L;
    private String typeName;
    private long id;
    private long count;

    public Type() {
    }

    public Type(String typeName, long typeId) {
        this.typeName = typeName;
        this.id = typeId;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public long getTypeId() {
        return id;
    }

    public void setTypeId(long typeId) {
        this.id = typeId;
    }

    @Override
    public String toString() {
        return typeName;
    }
}
