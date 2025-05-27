package model;

import java.util.Date;


public class AccessLog {
    private int id;              
    private String username;     
    private String ipAddress;    
    private String pageUrl;      
    private Date accessTime;    
    private String userAgent;    


    public AccessLog() {
    }

    /**
     * 
     * @param username 
     * @param ipAddress 
     * @param pageUrl 
     * @param accessTime 
     * @param userAgent 
     */
    public AccessLog(String username, String ipAddress, String pageUrl, Date accessTime, String userAgent) {
        this.username = username;
        this.ipAddress = ipAddress;
        this.pageUrl = pageUrl;
        this.accessTime = accessTime;
        this.userAgent = userAgent;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getPageUrl() {
        return pageUrl;
    }

    public void setPageUrl(String pageUrl) {
        this.pageUrl = pageUrl;
    }

    public Date getAccessTime() {
        return accessTime;
    }

    public void setAccessTime(Date accessTime) {
        this.accessTime = accessTime;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }
} 