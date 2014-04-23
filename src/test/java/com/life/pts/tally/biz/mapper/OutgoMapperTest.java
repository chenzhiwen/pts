/**
 * 
 */
package com.life.pts.tally.biz.mapper;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.life.framework.core.exception.DAOException;
import com.life.pts.common.test.support.Junit4TestSupport;
import com.life.pts.tally.common.model.Outgo;

/**
 * @Title: OutgoMapperTest
 * @Description: OutgoMapperTest
 * @Copyright: Copyright 2013
 * @author wen578351314@gmail.com
 * @date 2014-4-23
 * @since 1.0.0-SNAPSHOT
 */
public class OutgoMapperTest extends Junit4TestSupport {

	@Resource
	private OutgoMapper outgoMapper;
	
	@Test
	public void testListOutgo() {
		try {
			List<Outgo> outgoList = this.outgoMapper.listOutgo(new HashMap<String, Object>());
			for (Outgo outgo : outgoList) {
				System.out.println(outgo);
			}
		} catch (DAOException e) {
			e.printStackTrace();
		}
	}
}
