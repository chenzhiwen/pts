/**
 * 
 */
package com.life.pts.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.life.framework.core.exception.DAOException;
import com.life.framework.core.mybatis.mapper.RepositoryMapper;
import com.life.pts.common.model.Attachment;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月22日
 * @since 1.0.0-SNAPSHOT
 */
@RepositoryMapper
public interface AttachmentMapper {

	/**
	 * 保存附件信息
	 * 
	 * @param attachment
	 * @throws DAOException
	 */
	void addAttachment(Attachment attachment) throws DAOException;

	/**
	 * 根据消费记录主键获取附件信息
	 * 
	 * @param recordId
	 * @return
	 * @throws DAOException
	 */
	List<Attachment> findByRecordId(@Param("recordId") String recordId) throws DAOException;
}
