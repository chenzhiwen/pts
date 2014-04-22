/**
 * 
 */
package com.life.pts.common.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.life.framework.core.exception.DAOException;
import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.mapper.AttachmentMapper;
import com.life.pts.common.model.Attachment;
import com.life.pts.common.service.AttachmentService;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月22日
 * @since 1.0.0-SNAPSHOT
 */
@Service
@Transactional(rollbackFor = ServiceException.class)
public class AttachmentServiceImpl implements AttachmentService {
	
	@Resource
	private AttachmentMapper attachmentMapper;

	/* (non-Javadoc)
	 * @see com.life.pts.common.service.AttachmentService#addAttachment(com.life.pts.common.model.Attachment)
	 */
	@Override
	public void addAttachment(Attachment attachment) throws ServiceException {
		try {
			this.attachmentMapper.addAttachment(attachment);
		} catch (DAOException e) {
			throw new ServiceException(e);
		}
	}

	@Override
	public List<Attachment> findByRecordId(String recordId)
			throws ServiceException {
		try {
			return this.attachmentMapper.findByRecordId(recordId);
		} catch (DAOException e) {
			throw new ServiceException(e);
		}
		
	}

}
