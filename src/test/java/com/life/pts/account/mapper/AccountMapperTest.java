/**
 * 
 */
package com.life.pts.account.mapper;

import java.util.HashMap;

import javax.annotation.Resource;

import org.junit.Test;

import com.life.pts.common.test.support.Junit4TestSupport;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月21日
 * @since 1.0.0-SNAPSHOT
 */
public class AccountMapperTest extends Junit4TestSupport {

	@Resource
	private AccountMapper accountMapper;
	
	@Test
	public void testListAccount() {
		System.out.println(this.accountMapper.listAccount(new HashMap<String, Object>()));
	}
}
