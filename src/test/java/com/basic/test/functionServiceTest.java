package com.basic.test;

import java.util.List;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.precisetest.domain.function;
import com.precisetest.services.functionService;

public class functionServiceTest {

	private static functionService functionService;
	
	@Before
	public void setUp() throws Exception {
		functionService = new functionService();
	}

	@After
	public void tearDown() throws Exception {
		functionService = null;
	}

	@Test
	public void test() {
	    List<function> functions = functionService.findAllFunctions();
	    function func1 = functionService.findFunctionByName("func1");
	    Assert.assertNotNull(functions);
	    for (function func : functions) {
	      System.out.println(func.getFunction_name());
	      System.out.println(func.getTest_cases());
	    }
	    System.out.println("func1 has cases: " + func1.getTest_cases());
	}

}
