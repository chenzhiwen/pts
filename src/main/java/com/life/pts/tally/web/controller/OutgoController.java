/**
 * 
 */
package com.life.pts.tally.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.Constants;
import com.life.pts.common.model.Attachment;
import com.life.pts.common.service.AttachmentService;
import com.life.pts.common.web.convert.DateConvertEditor;
import com.life.pts.tally.biz.service.OutgoService;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoController
 * @Description: OutgoController
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@Controller
public class OutgoController {
	
	@Resource
	private OutgoService outgoService;
	
	@Resource
	private AttachmentService attachmentService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
	
	@RequestMapping("outgo_add.action")
	public ModelAndView addOutgo(@RequestParam("attachment") MultipartFile[] attachment, HttpServletRequest request, Outgo outgo) {
		Map<String, Object> model = new HashMap<String, Object>();;
		try {
			List<Attachment> attachmentList = new ArrayList<Attachment>();
			Attachment attachmentImage = null;
			for(MultipartFile file : attachment){  
				attachmentImage = new Attachment(); 
			    if(!file.isEmpty()){  
			        String realPath = Constants.CONFIG_PROPERTIES.getProperty(Constants.FILE_UPLOAD_PATH);
			        
			        File realPathFile = new File(realPath);
			        if (!realPathFile.exists()) {
			        	realPathFile.mkdir();
			        }
			        //这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的  
			        FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, file.getOriginalFilename()));
			        attachmentImage.setAbsolutePath(file.getOriginalFilename());
			        
			        attachmentList.add(attachmentImage);
			    }
			}
			outgo.setAttachmentList(attachmentList);
			this.outgoService.addOutgo(outgo);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		model.put("success", true);
		return new ModelAndView("addRecord", model);
	}
	
	@RequestMapping("outgo_list.action")
	public ModelAndView listOutgo() {
		Map<String, Object> model = new HashMap<String, Object >();
		try {
			List<Outgo> outgoList = this.outgoService.listOutgo(new HashMap<String, Object>());
			model.put("outgoList", outgoList);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return new ModelAndView("listRecord", model);
	}

	@RequestMapping("outgo_listJson.action")
	@ResponseBody
	public Map<String, Object> listJson() {
		Map<String, Object> model = new HashMap<String, Object >();
		try {
			List<Outgo> outgoList = this.outgoService.listOutgo(new HashMap<String, Object>());
			model.put("outgoList", outgoList);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping("/outgo_outputImage.action")
	public void outputImage(String absolutePath, HttpServletResponse response) {
		try {
			String fileSharePath = Constants.CONFIG_PROPERTIES.getProperty(Constants.FILE_UPLOAD_PATH);
			
			response.setContentType("image/jpeg");
			
			File imageFile = new File(fileSharePath + absolutePath);
			if (imageFile.exists()) {
				InputStream in = new FileInputStream(imageFile);
				IOUtils.copy(in, response.getOutputStream());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
