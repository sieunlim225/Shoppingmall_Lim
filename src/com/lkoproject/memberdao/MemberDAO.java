package com.lkoproject.memberdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.lkoproject.memberdto.MemberDTO;

public class MemberDAO {
	DataSource datasource;
	public MemberDAO() {
		try {
			Context context = new InitialContext();
			datasource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt =null;
		int i=0; // 이거 0 이라고 안해주면 The local variable 변수명 may not have been initialized 애러 발생
		
		try {
			
			conn =  datasource.getConnection();
			
//			
			String query = "INSERT INTO membership(id, pw, name, gender, phone, addnum, address1, address2, email) "
					+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,dto.getId());
			pstmt.setString(2,dto.getPw());
			pstmt.setString(3,dto.getName());
			pstmt.setString(4,dto.getGender());
			pstmt.setString(5,dto.getPhone());
			pstmt.setString(6,dto.getAddnum());
			pstmt.setString(7,dto.getAddress1());
			pstmt.setString(8,dto.getAddress2());
			pstmt.setString(9,dto.getEmail());
			
			i = pstmt.executeUpdate();
	
			if(i==1) {
				System.out.println("INSERT SUCESS");
				
			}else {
				System.out.println("INSERT FAIL");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(pstmt!=null)pstmt.close();if(conn!=null)conn.close();}catch(Exception e){e.printStackTrace();}
		}
		
		return i;
	}// join();
	
	public int login(MemberDTO dto) {
		
		System.out.println("로그인 DAO");
		Connection conn =null ;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			
			conn =  datasource.getConnection();
			String query = "SELECT pw FROM membership WHERE id= ? ";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			
			rs = pstmt.executeQuery();
			System.out.println("쿼리문 실행");
			if(rs.next()) {
				if(rs.getString(1).equals(dto.getPw())) {
					return 1; //로그인성공
				}else {
					return 0; // 로그인실패
				}
		
				
			}return -1; //아이디없음
	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(rs!=null)rs.close(); if(pstmt!=null)pstmt.close(); if(conn!=null)conn.close();}catch(Exception e){e.printStackTrace();}
		}
		System.out.println("로그인 끝");
		return -2; //쿼리끝
		
	}
	public MemberDTO modify(String userId) {
	      
	      Connection con = null;
	      PreparedStatement pstmt= null;
	      ResultSet rs = null;
	      MemberDTO dto =null;
	      try {
	         con = datasource.getConnection();
	         String query = "SELECT * FROM membership WHERE id=?";
	         pstmt = con.prepareStatement(query);
	         pstmt.setString(1, userId);
	         rs = pstmt.executeQuery();
	         
	         
	         if(rs.next()) {
	            String id = rs.getString("id");
	            String pw = rs.getString("pw");
	            String name = rs.getString("name");
	            String gender = rs.getString("gender");
	            String phone = rs.getString("phone");
	            String addnum = rs.getString("addnum");
	            String address1 = rs.getString("address1");
	            String address2 = rs.getString("address2");
	            String email = rs.getString("email");
	            Timestamp joindate = rs.getTimestamp("joindate");
	            
	            dto = new MemberDTO( id,  pw,  name, gender, phone,
	                   addnum, address1, address2, email, joindate);
	         }
	         
	      }catch(Exception e) {
	      e.printStackTrace();   
	      }finally {
	         try {if(rs!=null)rs.close(); if(pstmt!=null)pstmt.close(); if(con!=null)con.close();}catch(Exception e){e.printStackTrace();}
	      }
	      
	      return dto;
	      
	   }
	
	
	
	public int ModifyAction(MemberDTO dto) {
		System.out.println("회원정보수정 DAO");
		Connection conn =null;
		PreparedStatement pstmt = null;
		int rs = 0;
		
		try {
			conn = datasource.getConnection();
			String query = "UPDATE membership SET pw=?,phone=?,addnum=?,address1=?,address2=?,email=? where id=?";
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1,dto.getPw());
			pstmt.setString(2,dto.getPhone());
			pstmt.setString(3,dto.getAddnum());
			pstmt.setString(4,dto.getAddress1());
			pstmt.setString(5,dto.getAddress2());
			pstmt.setString(6,dto.getEmail());
			pstmt.setString(7,dto.getId());
			
			rs = pstmt.executeUpdate();
			
			if(rs==1) {
	
				System.out.println("정보수정완료");
			}else {
				System.out.println(rs);
				System.out.println("정보수정실패");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(pstmt!=null)pstmt.close();if(conn!=null)conn.close();}catch(Exception e){e.printStackTrace();}
		}
		
		return rs;
		
		
		
	}
	
	public int joinCheck(String id){
	      
	      Connection conn =null ;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String query = "select * from membership WHERE id= ?";
	      try {
	         conn =  datasource.getConnection();
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();
	         if(rs.next() || id.equals("")) {
	            return 0;  //이미 존재하는 회원
	         }
	         else {
	            return 1; //가입 가능한 회원 아이디
	         }
	      }catch(Exception e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            if(rs != null) rs.close();
	            if(pstmt != null) pstmt.close();
	         }catch(Exception e) {
	            e.printStackTrace();
	         }
	      }
	      
	      return -1;
	}
	
	public String loginpassword(MemberDTO dto) {
	      
	      System.out.println("로그인 패스워드 체크");
	      Connection conn =null ;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String ID = null;
	      
	      try {
	         
	         conn =  datasource.getConnection();
	         String query = "SELECT id FROM membership WHERE name=? and email=? ";
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, dto.getName());
	         pstmt.setString(2, dto.getEmail());
	         
	         rs = pstmt.executeQuery();  //rs 에 테이블로 id 가 담겼어 
	         System.out.println("쿼리문 실행");
	         
	         if(rs.next()) {
	            System.out.println(rs.getString(1));
	            ID = rs.getString(1);
	                // 인증성공
	         }return ID;
	         /*   }else {
	               return 0; // 인증실패
	            }
	      
	            */
	         
	         
	         
	   
	      }catch(Exception e) {
	         e.printStackTrace();
	      }finally {
	         try {if(rs!=null)rs.close(); if(pstmt!=null)pstmt.close(); if(conn!=null)conn.close();}catch(Exception e){e.printStackTrace();}
	      }
	      System.out.println("로그인 끝");
	      return ID; //쿼리끝
	      
	      
	      
	   }
	      public String passwordcheck(MemberDTO dto) {
	         
	         Connection conn = null;
	         PreparedStatement pstmt = null;
	         ResultSet rs = null;
	         String PW = null;
	         
	         try {
	            
	            conn =  datasource.getConnection();
	            String query = "SELECT pw FROM membership WHERE id=? and email=? ";
	            pstmt = conn.prepareStatement(query);
	            pstmt.setString(1, dto.getId());
	            pstmt.setString(2, dto.getEmail());
	            
	            
	            rs = pstmt.executeQuery();  //rs 에 테이블로 pw 가 담겼어 
	            System.out.println("페스워드 쿼리문 실행");
	            
	            if(rs.next()) {
	               System.out.println(rs.getString(1));
	               PW = rs.getString(1);
	                   // 인증성공
	            }return PW;
	            /*   }else {
	                  return 0; // 인증실패
	               }
	         
	               */
	            
	            
	            
	      
	         }catch(Exception e) {
	            e.printStackTrace();
	         }finally {
	            try {if(rs!=null)rs.close(); if(pstmt!=null)pstmt.close(); if(conn!=null)conn.close();}catch(Exception e){e.printStackTrace();}
	         }
	         System.out.println("끝");
	         return PW; //쿼리끝   
	         
	         
	      
	   }
	

}
