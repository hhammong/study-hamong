package egovframework.dev.board.service.impl;

public class BoardVO {

    private String hNo;
    private String hTitle;
    private String hContent;
    private String hName;
    private String hDate;
    private String sc;
    private String searchKeyword;

    public String gethNo() {
        return hNo;
    }

    public void sethNo(String hNo) {
        this.hNo = hNo;
    }

    public String gethTitle() {
        return hTitle;
    }

    public void sethTitle(String hTitle) {
        this.hTitle = hTitle;
    }

    public String gethContent() {
        return hContent;
    }

    public void sethContent(String hContent) {
        this.hContent = hContent;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String gethDate() {
        return hDate;
    }

    public void sethDate(String hDate) {
        this.hDate = hDate;
    }

    public String getSc() {
        return sc;
    }

    public void setSc(String sc) {
        this.sc = sc;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    @Override
    public String toString() {
        return "BoardVO{" +
                "hNo='" + hNo + '\'' +
                ", hTitle='" + hTitle + '\'' +
                ", hContent='" + hContent + '\'' +
                ", hName='" + hName + '\'' +
                ", hDate='" + hDate + '\'' +
                ", sc='" + sc + '\'' +
                ", searchKeyword='" + searchKeyword + '\'' +
                '}';
    }
}
