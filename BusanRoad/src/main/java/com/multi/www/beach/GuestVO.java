package com.multi.www.beach;

public class GuestVO {
	private String day;
	private double guest;
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public double getGuest() {
		return guest;
	}
	public void setGuest(double guest) {
		this.guest = guest;
	}
	
	@Override
	public String toString() {
		return "GuestVO [day=" + day + ", guest=" + guest + "]";
	}
	
}
