/**
 * 
 */
package com.life.pts.tally.biz.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
@Service
public class OutgoServiceImpl implements OutgoService {
	
	@Resource
	private OutgoMapper outgoMapper;

	/* (non-Javadoc)
	 * @see com.life.pts.tally.biz.service.OutgoService#addOutgo(com.life.pts.tally.common.model.Outgo)
	 */
	@Override
	public void addOutgo(Outgo outgo) throws ServiceException {

	}

}
