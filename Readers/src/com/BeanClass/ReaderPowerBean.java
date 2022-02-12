package com.BeanClass;

public class ReaderPowerBean {

	
	private String MeterNo,Units,dateupdate,monthupdate,yearupdate;
	public String getMeterNo() {
		return MeterNo;
	}

	public void setMeterNo(String meterNo) {
		MeterNo = meterNo;
	}

	public String getUnits() {
		return Units;
	}

	public void setUnits(String units) {
		Units = units;
	}

	public String getDateupdate() {
		return dateupdate;
	}

	public void setDateupdate(String dateupdate) {
		this.dateupdate = dateupdate;
	}

	public String getMonthupdate() {
		return monthupdate;
	}

	public void setMonthupdate(String monthupdate) {
		this.monthupdate = monthupdate;
	}

	public String getYearupdate() {
		return yearupdate;
	}

	public void setYearupdate(String yearupdate) {
		this.yearupdate = yearupdate;
	}

	private String EncMeterNo,Encdate,EncMonth,EncYear;
	private String EncUnits;
	private int Amount;
	

	public String getEncMeterNo() {
		return EncMeterNo;
	}

	public void setEncMeterNo(String encMeterNo) {
		EncMeterNo = encMeterNo;
	}

	public String getEncdate() {
		return Encdate;
	}

	public void setEncdate(String encdate) {
		Encdate = encdate;
	}

	public String getEncMonth() {
		return EncMonth;
	}

	public void setEncMonth(String encMonth) {
		EncMonth = encMonth;
	}

	public String getEncYear() {
		return EncYear;
	}

	public void setEncYear(String encYear) {
		EncYear = encYear;
	}

	public String getEncUnits() {
		return EncUnits;
	}

	public void setEncUnits(String encUnits) {
		EncUnits = encUnits;
	}

	
	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}


	
}
