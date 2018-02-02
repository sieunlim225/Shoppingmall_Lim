package com.lkoproject.memberdto;

import java.sql.Timestamp;

public class ProductDTO {
	int itemNo;
	String title, mainCate, subCate, itemCode, price, content;
	int itemGroup;
	Timestamp upload;
	String mainImage, image1, image2 , image3 , contentImage;
	int s ,m ,l ,xl;
	
	public ProductDTO() {
		
	}
	
	public ProductDTO(int itemNo, String title, String mainCate, String subCate, String itemCode, String price,
			String content, int itemGroup, Timestamp upload, String mainImage, String image1, String image2,
			String image3, String contentImage, int s, int m, int l, int xl) {
		super();
		this.itemNo = itemNo;
		this.title = title;
		this.mainCate = mainCate;
		this.subCate = subCate;
		this.itemCode = itemCode;
		this.price = price;
		this.content = content;
		this.itemGroup = itemGroup;
		this.upload = upload;
		this.mainImage = mainImage;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.contentImage = contentImage;
		this.s = s;
		this.m = m;
		this.l = l;
		this.xl = xl;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMainCate() {
		return mainCate;
	}
	public void setMainCate(String mainCate) {
		this.mainCate = mainCate;
	}
	public String getSubCate() {
		return subCate;
	}
	public void setSubCate(String subCate) {
		this.subCate = subCate;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getItemGroup() {
		return itemGroup;
	}
	public void setItemGroup(int itemGroup) {
		this.itemGroup = itemGroup;
	}
	public Timestamp getUpload() {
		return upload;
	}
	public void setUpload(Timestamp upload) {
		this.upload = upload;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getContentImage() {
		return contentImage;
	}
	public void setContentImage(String contentImage) {
		this.contentImage = contentImage;
	}
	public int getS() {
		return s;
	}
	public void setS(int s) {
		this.s = s;
	}
	public int getM() {
		return m;
	}
	public void setM(int m) {
		this.m = m;
	}
	public int getL() {
		return l;
	}
	public void setL(int l) {
		this.l = l;
	}
	public int getXl() {
		return xl;
	}
	public void setXl(int xl) {
		this.xl = xl;
	}
	
}
