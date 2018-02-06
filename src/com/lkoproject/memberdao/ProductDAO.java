package com.lkoproject.memberdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

import com.lkoproject.memberdto.MyCartDTO;
import com.lkoproject.memberdto.ProductDTO;

public class ProductDAO {

   DataSource datasource;
   
   public ProductDAO() {
      try {
         Context context = new InitialContext();
         datasource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
      }catch(Exception e) {
         e.printStackTrace();
      }
   }
   
   public ArrayList<ProductDTO> list(int startRow, int endRow) {
	      
	      System.out.println("리스트()");
	      
	      ArrayList<ProductDTO> dtos = new ArrayList<ProductDTO>(); 
	      
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      ResultSet rs= null;
	      try {
	         con = datasource.getConnection();
	         
	         String query = "SELECT * FROM "
	          		+ "(SELECT rownum rn, item_no, title, price, item_code, content, upload, main_image, image1 , image2 , image3, content_image, s, m, l, xl "
	          		+ "FROM (SELECT ii.item_no, ii.title, ii.price, ii.item_code, ii.content, ii.upload, im.main_image, im.image1 , im.image2 , im.image3, im.content_image, ia.s, ia.m, ia.l, ia.xl "
	          		+ "FROM item_info ii, item_image im,item_amount ia "
	          		+ "WHERE ii.item_no=im.item_no AND ii.item_no=ia.item_no ORDER BY ii.item_no DESC)) "
	          		+ "WHERE rn between ? AND ?";
	           
	           //item_info ii,item_image im WHERE ii.item_no=im.item_no AND ii.main_cate=?
	           pstmt = con.prepareStatement(query);
	           
	           pstmt.setInt(1, startRow);
	           pstmt.setInt(2, endRow);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            
	            ProductDTO dto = new ProductDTO();
	            
	            dto.setItemNo(rs.getInt("item_no"));
	            dto.setTitle(rs.getString("title"));
	            dto.setPrice(rs.getString("price")); 
	            dto.setItemCode(rs.getString("item_code"));
	            dto.setUpload(rs.getTimestamp("upload"));
	            dto.setMainImage(rs.getString("main_image"));
	            dto.setImage1(rs.getString("image1"));
	            dto.setImage2(rs.getString("image2"));
	            dto.setImage3(rs.getString("image3"));
	            dto.setContentImage(rs.getString("content_image"));
	            dto.setS(rs.getInt("s"));
	            dto.setM(rs.getInt("m"));
	            dto.setL(rs.getInt("l"));
	            dto.setXl(rs.getInt("xl"));
	            System.out.println(dto);
	            dtos.add(dto);
	         
	         }
	         System.out.println("추가완료");
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	      
	      return dtos;
	   }
   
   public ArrayList<ProductDTO> list(String main_cate, int startRow, int endRow) {
      
      System.out.println("리스트()");
      
      ArrayList<ProductDTO> dtos = new ArrayList<ProductDTO>(); 
      
      Connection con = null;
      PreparedStatement pstmt= null;
      ResultSet rs= null;
      try {
         con = datasource.getConnection();
         
         String query = "SELECT * FROM "
          		+ "(SELECT rownum rn, item_no, title, price, item_code, content, upload, main_image, image1 , image2 , image3, content_image, s, m, l, xl "
          		+ "FROM (SELECT ii.item_no, ii.title, ii.price, ii.item_code, ii.content, ii.upload, im.main_image, im.image1 , im.image2 , im.image3, im.content_image, ia.s, ia.m, ia.l, ia.xl "
          		+ "FROM item_info ii, item_image im,item_amount ia "
          		+ "WHERE ii.item_no=im.item_no AND ii.item_no=ia.item_no AND ii.main_cate=? ORDER BY ii.item_no DESC)) "
          		+ "WHERE rn between ? AND ?";
           
           //item_info ii,item_image im WHERE ii.item_no=im.item_no AND ii.main_cate=?
           pstmt = con.prepareStatement(query);
           pstmt.setString(1, main_cate);
           pstmt.setInt(2, startRow);
           pstmt.setInt(3, endRow);
         rs = pstmt.executeQuery();
         while(rs.next()) {
            
            ProductDTO dto = new ProductDTO();
            
            dto.setItemNo(rs.getInt("item_no"));
            dto.setTitle(rs.getString("title"));
            dto.setPrice(rs.getString("price")); 
            dto.setItemCode(rs.getString("item_code"));
            dto.setUpload(rs.getTimestamp("upload"));
            dto.setMainImage(rs.getString("main_image"));
            dto.setImage1(rs.getString("image1"));
            dto.setImage2(rs.getString("image2"));
            dto.setImage3(rs.getString("image3"));
            dto.setContentImage(rs.getString("content_image"));
            dto.setS(rs.getInt("s"));
            dto.setM(rs.getInt("m"));
            dto.setL(rs.getInt("l"));
            dto.setXl(rs.getInt("xl"));
            System.out.println(dto);
            dtos.add(dto);
         
         }
         System.out.println("추가완료");
         
      }catch(Exception e) {
         e.printStackTrace();
      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
      
      return dtos;
   }
   
   public ArrayList<ProductDTO> list(String main_cate, String sub_cate, int startRow, int endRow) {
      
      System.out.println("리스트()");
      
      ArrayList<ProductDTO> dtos = new ArrayList<ProductDTO>(); 
      
      Connection con = null;
      PreparedStatement pstmt= null;
      ResultSet rs= null;
      try {
         con = datasource.getConnection();
         String query = "SELECT * FROM "
         		+ "(SELECT rownum rn, item_no, title, price, item_code, content, upload, main_image, image1 , image2 , image3, content_image, s, m, l, xl "
         		+ "FROM (SELECT ii.item_no, ii.title, ii.price, ii.item_code, ii.content, ii.upload, im.main_image, im.image1 , im.image2 , im.image3, im.content_image, ia.s, ia.m, ia.l, ia.xl "
         		+ "FROM item_info ii, item_image im,item_amount ia "
         		+ "WHERE ii.item_no=im.item_no AND ii.item_no=ia.item_no AND ii.main_cate=? AND ii.sub_cate=? ORDER BY ii.item_no DESC)) "
         		+ "WHERE rn between ? AND ?";
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, main_cate);
         pstmt.setString(2, sub_cate);
         pstmt.setInt(3, startRow);
         pstmt.setInt(4, endRow);
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            
            ProductDTO dto = new ProductDTO();
            
            dto.setItemNo(rs.getInt("item_no"));
            dto.setTitle(rs.getString("title"));
            dto.setPrice(rs.getString("price")); 
            dto.setItemCode(rs.getString("item_code"));
            dto.setUpload(rs.getTimestamp("upload"));
            dto.setMainImage(rs.getString("main_image"));
            dto.setImage1(rs.getString("image1"));
            dto.setImage2(rs.getString("image2"));
            dto.setImage3(rs.getString("image3"));
            dto.setContentImage(rs.getString("content_image"));
            dto.setS(rs.getInt("s"));
            dto.setM(rs.getInt("m"));
            dto.setL(rs.getInt("l"));
            dto.setXl(rs.getInt("xl"));
            System.out.println("l:");
            System.out.println(dto);
            
            dtos.add(dto);
         
         }
         System.out.println("추가완료");
         
      }catch(Exception e) {
         e.printStackTrace();
      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
      
      return dtos;
   }
   
   public int upload(String mainImage,String image1,String image2,String image3,String itemTitle,
         String mainCate,String subCate,String itemCode,String price,String content,String s,String m,String l,String xl,String contentImage){
      
      System.out.println("업로드()");
      
      Connection con = null;
      PreparedStatement pstmt= null;
      int result =0;
      try {
         
         con = datasource.getConnection();
         
         String query = "INSERT INTO item_info VALUES(seq.nextval,?,?,?,?,?,?,0,seq.currval,SYSDATE)";
         pstmt = con.prepareStatement(query);
         pstmt.setString(1,itemTitle);
         pstmt.setString(2,mainCate);
         pstmt.setString(3,subCate);
         pstmt.setString(4,itemCode);
         pstmt.setString(5,price);
         pstmt.setString(6,content);
         int i = pstmt.executeUpdate();
         if(i == 1) {
            System.out.println("아이템 정보 입력완료");
         }
         
         String atQuery = "INSERT INTO item_amount VALUES(seq.currval,?,?,?,?)";
         pstmt = con.prepareStatement(atQuery);
         pstmt.setString(1,s);
         pstmt.setString(2,m);
         pstmt.setString(3,l);
         pstmt.setString(4,xl);
         int j = pstmt.executeUpdate();
         if(i == 1) {
            System.out.println("아이템 사이즈별 수량 입력완료");
         }
         
         String imQuery = "INSERT INTO item_image VALUES(seq.currval,?,?,?,?,?)";
         pstmt = con.prepareStatement(imQuery);
         pstmt.setString(1,mainImage);
         pstmt.setString(2,image1);
         pstmt.setString(3,image2);
         pstmt.setString(4,image3);
         pstmt.setString(5,contentImage);
         int k = pstmt.executeUpdate();
         if(i == 1) {
            System.out.println("아이템 이미지 입력완료");
         }
         
         if(i+j+k != 3) {
            System.out.println("오류가 발생하였습니다.");
            result = -1;
         }else {
            result = 1;
         }
         
      }catch(Exception e) {
         e.printStackTrace();
      }finally {try {if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
      
      return result;
   }
   
   public ProductDTO productView(String strNo) {
      Connection con = null;
      PreparedStatement pstmt= null;
      ResultSet rs= null;
      ProductDTO dto =null;
      try {
         con = datasource.getConnection();
         
         String query = "SELECT ii.item_no, ii.title, ii.main_cate, ii.sub_cate, ii.item_code, ii.price, ii.content, "
               + "ii.item_group, ii.upload, im.main_image, im.image1, im.image2, im.image3, im.content_image, ia.s, "
               + "ia.m, ia.l, ia.xl FROM item_info ii,item_image im,item_amount ia WHERE ii.item_no=im.item_no AND "
               + "ii.item_no=ia.item_no AND ii.item_no=?";
         pstmt = con.prepareStatement(query);
         pstmt.setInt(1,Integer.parseInt(strNo));
         rs = pstmt.executeQuery();
         
         if(rs.next()) {
               int itemNo = rs.getInt("item_no");
               String title = rs.getString("title");
               String mainCate = rs.getString("main_cate");
               String subCate = rs.getString("sub_cate");
               String itemCode = rs.getString("item_code");
               String price = rs.getString("price"); 
               String content = rs.getString("content"); 
               int itemGroup = rs.getInt("item_group");
               Timestamp upload = rs.getTimestamp("upload");
               String mainImage = rs.getString("main_image");
               String image1 = rs.getString("image1");
               String image2 = rs.getString("image2");
               String image3 = rs.getString("image3");
               String contentImage = rs.getString("content_image");
               int s = rs.getInt("s");
               int m = rs.getInt("m"); 
               int l = rs.getInt("l"); 
               int xl = rs.getInt("xl");
               
               dto = new ProductDTO(itemNo,title,mainCate,subCate,itemCode,price,content,itemGroup,upload,mainImage,image1,image2,
                     image3,contentImage,s,m,l,xl);
               System.out.println(dto);
            
            }

      }catch(Exception e) {
         e.printStackTrace();
      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
      
      return dto;

   }
   
   public int addCart(String itemNo,String size,String amount,String id) {
	      System.out.println("addCart");
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      int result=0;
	      
	      try {
	         con = datasource.getConnection();
	         String query = "INSERT INTO mycart VALUES(?,?,?,?)";
	         pstmt = con.prepareStatement(query);
	         pstmt.setInt(1, Integer.parseInt(itemNo));
	         pstmt.setString(2, size);
	         pstmt.setInt(3, Integer.parseInt(amount));
	         pstmt.setString(4, id);
	         int i = pstmt.executeUpdate();
	         
	         if(i == 1) {
	            result = 1;
	         }
	         
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	      return result;
	   }
   
   
   public ArrayList<MyCartDTO> cartView(String id){
	   System.out.println("myCart()");
	   ArrayList<MyCartDTO> dtos = new ArrayList<MyCartDTO>();
	   Connection con = null;
	   PreparedStatement pstmt= null;
	   ResultSet rs= null;
	   
	   try {
		   
	         con = datasource.getConnection();
	         String query = "SELECT mc.item_no,im.main_image,ii.title,ii.price,mc.item_size,mc.amount "
	         		+ "FROM mycart mc,item_info ii,item_image im "
	         		+ "WHERE mc.item_no=ii.item_no AND mc.item_no=im.item_no AND mc.id=?";
	         pstmt = con.prepareStatement(query);
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();
	         
	         while(rs.next()) {
	        	 int no = rs.getInt("item_no");
	        	 String im = rs.getString("main_image");
	        	 String t = rs.getString("title");
	        	 int p = rs.getInt("price");
	        	 String s = rs.getString("item_size");
	        	 int a = rs.getInt("amount");
	        	 
	        	 MyCartDTO dto = new MyCartDTO(no,im,t,p,s,a);
	        	 
	        	 dtos.add(dto);
	        	 
	         }
	         
	   }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	      
	return dtos;
	   
   }//카트 메서드
   public int itemCount() {
	      int count =0;
	      String query = "select count(*) from item_info";
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      ResultSet rs= null;
	       try {
	          con = datasource.getConnection();
	          pstmt = con.prepareStatement(query);
	          rs = pstmt.executeQuery();
	          if(rs.next()) {
	             count = rs.getInt(1);
	          }
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	       
	   return count;
	      
	   }
   
   public int itemCount(String main_cate) {
	      int count =0;
	      String query = "select count(*) from item_info WHERE main_cate=?";
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      ResultSet rs= null;
	       try {
	          con = datasource.getConnection();
	          pstmt = con.prepareStatement(query);
	          pstmt.setString(1, main_cate);
	          rs = pstmt.executeQuery();
	          if(rs.next()) {
	             count = rs.getInt(1);
	          }
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	       
	   return count;
	      
	   }
   
   public int itemCount(String main_cate, String sub_cate) {
	      int count =0;
	      String query = "select count(*) from item_info WHERE main_cate=? AND sub_cate=?";
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      ResultSet rs= null;
	       try {
	          con = datasource.getConnection();
	          pstmt = con.prepareStatement(query);
	          pstmt.setString(1, main_cate);
	          pstmt.setString(2, sub_cate);
	          rs = pstmt.executeQuery();
	          if(rs.next()) {
	             count = rs.getInt(1);
	          }
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {try {if(rs!=null)rs.close();if(pstmt!=null)pstmt.close();if(con!=null)con.close();}catch(Exception e) {e.printStackTrace();}}
	       
	   return count;
	      
	   }
   
	      
	}
   
   
      
