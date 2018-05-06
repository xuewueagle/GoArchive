package utils;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.News;
import model.User;

public class NewsFromPost {
private Random random = new Random();
	
	public News getNewsFromPost(HttpServletRequest request){
		
		News news = new News();
				
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024*1024*2);
		
		File tempDir = (File)request.getServletContext().getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(tempDir);
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setSizeMax(1024*1024*5);
		
		try {
			List<FileItem> items = upload.parseRequest(request);
			for (FileItem item : items) {
				if(item.isFormField()){
					switch (item.getFieldName()) {
					case "title": news.setTitle(item.getString("utf-8"));						
						break;
					case "annotation": news.setAnnotation(item.getString("utf-8"));						
						break;
					case "text": news.setText(item.getString("utf-8"));						
						break;
					case "idcat": news.setIdcat(Integer.parseInt(item.getString("utf-8")));						
						break;
					case "idnews": news.setIdnews(Integer.parseInt(item.getString("utf-8")));						
						break;	
					default:
						break;
					}
					HttpSession session = request.getSession();
					User user = (User)session.getAttribute("user");
					news.setAuthor(user.getIduser());
				} else {
					if(item.getSize() != 0){
						File uploadedFile = null;
						String nameFile;
						do {
							nameFile = "img/" + random.nextInt() + item.getName();
							String path = request.getServletContext().getRealPath("/" + nameFile);
							uploadedFile = new File(path);
						} while (uploadedFile.exists());
						uploadedFile.createNewFile();
						item.write(uploadedFile);
						news.setImage(nameFile);
					}
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return news;
		
	}
}
