package com.precisetest.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.precisetest.domain.testcase;
import com.precisetest.mappers.testcaseMapper;
import com.precisetest.persistence.sqlMybatisSession;

public class testcaseService {
	public List<testcase> findAllTestCases() {
		SqlSession sqlSession = sqlMybatisSession.openSession();
		try {
			testcaseMapper testcaseMapper = sqlSession
					.getMapper(testcaseMapper.class);
			return testcaseMapper.findAllTestCases();
		} finally {
			// If sqlSession is not closed
			// then database Connection associated this sqlSession will not be
			// returned to pool
			// and application may run out of connections.
			sqlSession.close();
		}
	}
}
