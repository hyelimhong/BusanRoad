package com.multi.www.beach;

public class BeachVO {
	private String name;
	private double latitude;
	private double longitude;
	private String contents;
	private String img;
	private String open;
	private String service;
	private String subway;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getSubway() {
		return subway;
	}
	public void setSubway(String subway) {
		this.subway = subway;
	}
	
	@Override
	public String toString() {
		return "BeachVO [name=" + name + ", latitude=" + latitude + ", longitude=" + longitude + ", contents="
				+ contents + ", img=" + img + ", open=" + open + ", service=" + service + ", subway=" + subway + "]";
	}
	
}
