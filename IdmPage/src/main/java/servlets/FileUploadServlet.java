package servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*10,   // 10 MB 
                 maxFileSize=1024*1024*50,        // 50 MB
                 maxRequestSize=1024*1024*100)     // 100 MB
public class FileUploadServlet extends HttpServlet {
	
 
    private static final long serialVersionUID = 205242440643911308L;
  
    /* Directory where uploaded files will be saved, its relative to
     * the web application directory.
     */
    
    //bisogna inserire la propria location per salvare correttamente i cv e poterli leggere
    private static final String UPLOAD_DIR = "C:\\Users\\Davide Milan\\Desktop\\progettoIDM\\IdmPage\\src\\main\\webapp\\WEB-INF\\img\\cv";
    
    /*QUELLA STANDARD
     * private static final String UPLOAD_DIR = "C:\\candidature_cv";
     */
    
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets absolute path of the web application
        //String applicationPath = request.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String uploadFilePath = UPLOAD_DIR;
         
        // creates the save directory if it does not exists
        File fileSaveDir = new File(uploadFilePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        //System.out.println("Upload File Directory="+fileSaveDir.getAbsolutePath());
        
        String fileName = null;
        //Get all the parts from request and write it to the file on server
        for (Part part : request.getParts()) {
        	if(!part.getName().contentEquals("nome")) {
            fileName = request.getParameter("nome")+getFileName(part);
            part.write(uploadFilePath + File.separator + fileName);
        	}
        }
        boolean controllo=false;
        if(controlloEstensione(fileName))
        	controllo=true;
        fileName=fileName.replace(".", "$");
        String nomeR="/risposta/" + fileName;
        String nomeE= "/errore/" + request.getParameter("nome");
        if(controllo) {
        	System.out.println("dentro if"+fileName);
        request.setAttribute("message", fileName + " File uploaded successfully!");
        getServletContext().getRequestDispatcher(nomeR).forward(
                request, response);
        }
        else getServletContext().getRequestDispatcher(nomeE).forward(
                request, response);
    }
 
	/* Utility method to get file name from HTTP header content-disposition
     */
    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        //System.out.println("content-disposition header= "+contentDisp);
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
            	token=token.replaceAll("( )+","_");
                return ("_"+token.substring(token.indexOf("=") + 2, token.length()-1));
            }
        }
        return "";
    }
    
    private boolean controlloEstensione(String fileName) {
    	if(fileName.endsWith(".odf")) {
    		return true;
    	}
    	if(fileName.endsWith("odt")) {
    		return true;
    	}
    	if(fileName.endsWith(".txt")) {
    		return true;
    	}
    	if(fileName.endsWith(".pdf")) {
    		return true;
    	}
    	if(fileName.endsWith(".doc")) {
    		return true;
    	}
    	if(fileName.endsWith(".docx")) {

    		return true;
    	}
    	return false;
    }
}
