package com.lkoproject.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import com.lkoproject.memberdao.ProductDAO;

public class UploadCommand implements MCommand{
	
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println("UploadCommand 실행");
		MultipartRequest multi = null;
		String path = request.getRealPath("/savefolder").replaceAll("\\\\", "/");
		int size =  10*1024*1024;//10메가
		String formName = "";
		String fileName = "";
		File file = null;
		boolean sizeError = false;
		
		try {
			multi = new MultipartRequest(request,path,size,"EUC-KR",new DefaultFileRenamePolicy());
					//(리퀘스트 객체, 저장될 서버 경로, 파일 최대 크기, 인코딩, 동일 파일명 방지 객체)
			System.out.println("MultipartRequest 생성");
		}catch(Exception e) {
			if(e.getMessage().indexOf("exceeds limit") > -1) {
				sizeError=true;
			}
			System.out.println("기타 애러");
			e.printStackTrace();
		}
		if(sizeError==true) {
			System.out.println("사이즈 애러");
			response.setContentType("text/html; charset=EUC-KR");
			response.setCharacterEncoding("EUC-KR");
			try {
				
				response.getWriter().write("<script>alert(''); location.href=''</script>");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
		String flag = multi.getParameter("flag");
		System.out.println(flag);
		
		if(flag.equals("postWrite")) {
			
			
			
		String itemTitle = multi.getParameter("item_title");
		String mainCate = multi.getParameter("main_cate");
		String subCate = multi.getParameter("sub_cate");
		String itemCode = multi.getParameter("item_code");
		String s = multi.getParameter("s_size");
		String m = multi.getParameter("m_size");
		String l = multi.getParameter("l_size");
		String xl = multi.getParameter("xl_size");
		String price = multi.getParameter("price");
		String content = multi.getParameter("content");
		String mainImage=null;
		String image1=null;
		String image2=null;
		String image3=null;
		String contentImage=null;
		
		content = content.replace("\r\n", "<br>");
		
		Enumeration forms = multi.getFileNames();
		while(forms.hasMoreElements()) {
			
			formName = (String)forms.nextElement();
			
			fileName = multi.getFilesystemName(formName);
			System.out.println(formName+"--"+fileName);
			if(fileName != null) {
				file = multi.getFile(formName);
				if(formName.equals("main_image")){
					mainImage = fileName;
				}else if(formName.equals("image1")){
					image1 = fileName;
				}else if(formName.equals("image2")){
					image2 = fileName;
				}else if(formName.equals("image3")){
					image3 = fileName;
				}else if(formName.equals("content_image")){
					contentImage = fileName;
				}
				
				
			}
		}
		System.out.println(file);
		
		ProductDAO dao = new ProductDAO();
		System.out.println(mainImage);
		System.out.println(image1);
		System.out.println(image2);
		System.out.println(image3);
		System.out.println(contentImage);
		
		System.out.println(itemTitle);
		System.out.println(mainCate);
		System.out.println(subCate);
		System.out.println(itemCode);
		System.out.println(s);
		System.out.println(m);
		System.out.println(l);
		System.out.println(xl);
		System.out.println(price);
		System.out.println(content);
		int i = dao.upload(mainImage,image1,image2,image3,itemTitle,mainCate,subCate,itemCode,price,content,s,m,l,xl,contentImage);
		}
		
		
		return null;
	}

}
