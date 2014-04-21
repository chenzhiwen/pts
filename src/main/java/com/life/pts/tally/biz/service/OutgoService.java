/**
 * 
 */
package com.life.pts.tally.biz.service;

import java.util.HashMap;
import java.util.List;

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

	/**
	 * 根据指定条件获取消费信息
	 * @param hashMap
	 * @return TODO
	 * @throws ServiceException 
	 */
	public List<Outgo> listOutgo(HashMap<String, Object> hashMap) throws ServiceException;
}
