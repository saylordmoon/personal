package org.apci.aplicaciones.resources;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.apci.aplicaciones.util.FileUtil;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

@Path("/file")
public class FileResource {
	
    @GET
    @Path("/download")
    @Produces("application/zip")
    public Response downloadZippedFile() {
 
    	String fileName = "prueba";
    	
        File file = new File(FileUtil.UPLOAD_FILE_SERVER + fileName);
 
        ResponseBuilder responseBuilder = Response.ok((Object) file);
        responseBuilder.header("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
        return responseBuilder.build();
    }
 
    @POST
    @Path("/upload/{ExperienciaId}")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadZippedFile(@Context HttpServletRequest pRequest,@PathParam("ExperienciaId") String pExperienciaId,
            @FormDataParam("uploadFile") InputStream fileInputStream,
            @FormDataParam("uploadFile") FormDataContentDisposition fileFormDataContentDisposition)
    {
    	    	
    	String directory = null;    	
        String fileName = null;
        String uploadFilePath = null;
 
        try {
            
        	directory = "/" + pExperienciaId + "/";
        	fileName = directory + fileFormDataContentDisposition.getFileName();
            
        	if (FileUtil.createDirectory(directory)) {
        		uploadFilePath = FileUtil.writeToFileServer(fileInputStream, fileName);
        	}
            
        }
        catch(IOException ioe){
            ioe.printStackTrace();
        }
        finally{

        }
        return Response.ok("File uploaded successfully at " + uploadFilePath).build();
    }

}
