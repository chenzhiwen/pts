/**
 * 
 */
package com.life.pts.tally.biz.service;

import org.springframework.stereotype.Service;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoService
 * @Description: OutgoService
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@Service
public interface OutgoService {

	/**
	 * 保存支出信息
	 * 
	 * @param outgo
	 * @throws ServiceException
	 */
	public void addOutgo(Outgo outgo) throws ServiceException;
}
