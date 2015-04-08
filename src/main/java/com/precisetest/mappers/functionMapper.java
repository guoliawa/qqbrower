package com.precisetest.mappers;

import java.util.List;

import com.precisetest.domain.function;

public interface functionMapper {
    List<function> findAllFunctions();
    function findFunctionByName(String name);
}
