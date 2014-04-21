/**
 * 
 */
package com.life.pts.account.mapper;

import java.util.List;
import java.util.Map;

import com.life.framework.core.mybatis.mapper.RepositoryMapper;

/**
 * @author wen578351314@gmail.com
 * @date 2014年4月21日
 * @since 1.0.0-SNAPSHOT
 */
@RepositoryMapper
public interface AccountMapper {

	/**
	 * 获取账户信息
	 * 
	 * @param example
	 * @return
	 */
	List<Map<String, Object>> listAccount(Map<String, Object> example);

	/**
	 * 获取账户记录数
	 * 
	 * @param example
	 * @return
	 */
	Long countAccount(Map<String, Object> example);
}
