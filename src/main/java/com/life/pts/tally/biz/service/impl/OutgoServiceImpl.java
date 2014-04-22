/**
 * 
 */
package com.life.pts.tally.biz.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.life.framework.core.exception.DAOException;
import com.life.framework.core.exception.ServiceException;
import com.life.framework.util.UUIDGenerator;
import com.life.pts.common.mapper.AttachmentMapper;
import com.life.pts.common.model.Attachment;
import com.life.pts.tally.biz.mapper.OutgoMapper;
import com.life.pts.tally.biz.service.OutgoService;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoServiceImpl
 * @Description: OutgoServiceImpl
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@Service
@Transactional(rollbackFor = ServiceException.class)
public class OutgoServiceImpl implements OutgoService {
	
	@Resource
	private OutgoMapper outgoMapper;
	
	@Resource
	private AttachmentMapper attachmentMapper; 

	/* (non-Javadoc)
	 * @see com.life.pts.tally.biz.service.OutgoService#addOutgo(com.life.pts.tally.common.model.Outgo)
	 */
	@Override
	public void addOutgo(Outgo outgo) throws ServiceException {
		try {
			outgo.setId(UUIDGenerator.generator());
			outgo.setInsertTime(new Date());
			
			this.outgoMapper.addOutgo(outgo);
			
			List<Attachment> attachmentList = outgo.getAttachmentList();
			for (Attachment attachment : attachmentList) {
				attachment.setRecordId(outgo.getId());
				attachment.setInsertTime(new Date());
				attachment.setId(UUIDGenerator.generator());
				this.attachmentMapper.addAttachment(attachment);
			}
		} catch (DAOException e) {
			throw new ServiceException(e);
		}
	}

	@Override
	public List<Outgo> listOutgo(Map<String, Object> hashMap) throws ServiceException {
		try {
			return this.outgoMapper.listOutgo(hashMap);
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	}

}
