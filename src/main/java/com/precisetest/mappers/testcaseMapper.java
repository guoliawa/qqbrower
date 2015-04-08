package com.precisetest.mappers;

import java.util.List;

import com.precisetest.domain.testcase;

public interface testcaseMapper {
    List<testcase> findAllTestCases();
}
