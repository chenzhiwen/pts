/**
 * 
 */
package com.life.pts.tally.biz.service.impl;

import com.life.framework.core.exception.ServiceException;
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
public class OutgoServiceImpl implements OutgoService {
	
	private OutgoMapper outgoMapper;

	/* (non-Javadoc)
	 * @see com.life.pts.tally.biz.service.OutgoService#addOutgo(com.life.pts.tally.common.model.Outgo)
	 */
	@Override
	public void addOutgo(Outgo outgo) throws ServiceException {

	}

}
