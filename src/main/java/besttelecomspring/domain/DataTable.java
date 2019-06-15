package besttelecomspring.domain;

import java.util.Arrays;

public class DataTable {
       private int draw;
       private int recordsTotal;
       private int recordsFiltered;
       private String data[][];

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public String[][] getData() {
        return data;
    }

    public void setData(String[][] data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "DataTable{" +
                "draw='" + draw + '\'' +
                ", recordsTotal=" + recordsTotal +
                ", recordsFiltered=" + recordsFiltered +
                ", data=" + Arrays.toString(data) +
                '}';
    }
}
