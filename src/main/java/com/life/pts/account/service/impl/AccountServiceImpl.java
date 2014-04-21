/**
 * 
 */
package com.life.pts.account.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.life.framework.core.exception.ServiceException;
import com.life.pts.account.mapper.AccountMapper;
import com.life.pts.account.service.AccountService;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月21日
 * @since 1.0.0-SNAPSHOT
 */
@Service
public class AccountServiceImpl implements AccountService {

	@Resource
	private AccountMapper accountMapper;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.life.pts.account.service.AccountService#listAccount(com.life.framework
	 * .core.mybatis.Criteria)
	 */
	@Override
	public List<Map<String, Object>> listAccount(Map<String, Object> example)
			throws ServiceException {
		try {
			return this.accountMapper.listAccount(example);
		} catch (Exception e) {
			throw new ServiceException(e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.life.pts.account.service.AccountService#countAccount(com.life.framework
	 * .core.mybatis.Criteria)
	 */
	@Override
	public Long countAccount(Map<String, Object> example) {
		// TODO Auto-generated method stub
		return null;
	}

}
