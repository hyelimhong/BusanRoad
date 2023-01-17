package com.multi.www.beach;

public class ConfusionVO {
	
	private String id;
	private double lat;
	private double lng;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	
	@Override
	public String toString() {
		return "ConfusionVO [id=" + id + ", lat=" + lat + ", lng=" + lng + "]";
	}
	
}
