package com.lkoproject.memberdto;

public class MyCartDTO {
	int itemNo, price, amount;
	String mainImage , title , size ;

	public MyCartDTO(int itemNo, String mainImage, String title,int price, String size, int amount) {
		super();
		this.itemNo = itemNo;
		this.mainImage = mainImage;
		this.title = title;
		this.price = price;
		this.size = size;
		this.amount = amount;

	}


	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getMainImage() {
		return mainImage;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	
}
