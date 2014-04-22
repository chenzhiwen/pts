/**
 * 
 */
package com.life.pts.tally.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.Constants;
import com.life.pts.common.model.Attachment;
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

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
		binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
	}
	
	@Resource
	private OutgoService outgoService;
	
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
			        attachmentImage.setAbsolutePath(realPath + file.getOriginalFilename());
			        
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
		return new ModelAndView("/record/addRecord", model);
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
		return new ModelAndView("/record/listRecord", model);
	}
}
