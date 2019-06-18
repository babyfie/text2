package Pojo;

public class Picture {
    private Integer picid;

    private String picurl;

    private String houseid;

    public Integer getPicid() {
        return picid;
    }

    public void setPicid(Integer picid) {
        this.picid = picid;
    }

    public String getPicurl() {
        return picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl == null ? null : picurl.trim();
    }

    public String getHouseid() {
        return houseid;
    }

    public void setHouseid(String houseid) {
        this.houseid = houseid == null ? null : houseid.trim();
    }
}