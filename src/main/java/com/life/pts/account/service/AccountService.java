/**
 * 
 */
package com.life.pts.account.service;

import java.util.List;
import java.util.Map;

import com.life.framework.core.exception.ServiceException;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月21日
 * @since 1.0.0-SNAPSHOT
 */
public interface AccountService {

	/**
	 * 获取账户信息
	 * 
	 * @param example
	 * @return
	 * @throws ServiceException 
	 */
	List<Map<String, Object>> listAccount(Map<String, Object> example) throws ServiceException;

	/**
	 * 获取账户记录数
	 * 
	 * @param example
	 * @return
	 */
	Long countAccount(Map<String, Object> example);

}
