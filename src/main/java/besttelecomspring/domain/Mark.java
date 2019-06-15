package besttelecomspring.domain;

import java.io.Serializable;

public class Mark implements Serializable {


    private static final long serialVersionUID = 8152015795430192212L;
    private String markName;
    private long id;
    private long count;


    public Mark() {
    }

    public Mark(String markName, long markId) {
        this.markName = markName;
        this.id = markId;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public String getMarkName() {
        return markName;
    }

    public void setMarkName(String markName) {
        this.markName = markName;
    }

    public long getMarkId() {
        return id;
    }

    public void setMarkId(long markId) {
        this.id = markId;
    }

    @Override
    public String toString() {
        return markName;
    }
}
