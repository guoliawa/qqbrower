package com.precisetest.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.precisetest.domain.function;
import com.precisetest.mappers.functionMapper;
import com.precisetest.persistence.sqlMybatisSession;

@Repository
public class functionService {

	public List<function> findAllFunctions() {
		SqlSession sqlSession = sqlMybatisSession.openSession();
		try {
			functionMapper functionMapper = sqlSession
					.getMapper(functionMapper.class);
			return functionMapper.findAllFunctions();
		} finally {
			// If sqlSession is not closed
			// then database Connection associated this sqlSession will not be
			// returned to pool
			// and application may run out of connections.
			sqlSession.close();
		}
	}
	
	public function findFunctionByName(String name) {
		SqlSession sqlSession = sqlMybatisSession.openSession();
		try {
			functionMapper functionMapper = sqlSession
					.getMapper(functionMapper.class);
			return functionMapper.findFunctionByName(name);
		} finally {
			// If sqlSession is not closed
			// then database Connection associated this sqlSession will not be
			// returned to pool
			// and application may run out of connections.
			sqlSession.close();
		}
	}
}
