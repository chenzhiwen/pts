/**
 * 
 */
package com.life.pts.tally.biz.mapper;

import java.util.HashMap;
import java.util.List;

import com.life.framework.core.exception.DAOException;
import com.life.framework.core.mybatis.mapper.RepositoryMapper;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoMapper
 * @Description: OutgoMapper
 * @Copyright: Copyright 2014
 * @author wen578351314@gmail.com
 * @date 2014年4月20日
 * @since 1.0.0-SNAPSHOT
 */
@RepositoryMapper
public interface OutgoMapper {

	void addOutgo(Outgo outgo) throws DAOException;

	List<Outgo> listOutgo(HashMap<String, Object> hashMap) throws DAOException;
}
