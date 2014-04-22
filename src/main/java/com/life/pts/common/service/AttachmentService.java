/**
 * 
 */
package com.life.pts.common.service;

import java.util.List;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.common.model.Attachment;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月22日
 * @since 1.0.0-SNAPSHOT
 */
public interface AttachmentService {

	/**
	 * 保存附件信息
	 * 
	 * @param attachment
	 * @throws ServiceException
	 */
	void addAttachment(Attachment attachment) throws ServiceException;

	/**
	 * 根据消费记录主键获取附件信息
	 * 
	 * @param recordId
	 * @return
	 */
	List<Attachment> findByRecordId(String recordId) throws ServiceException;
}
