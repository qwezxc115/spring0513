package com.choong.spr.mapper;

import java.util.List;

import com.choong.spr.domain.BoardDto;
import com.choong.spr.domain.Criteria;

public interface BoardMapper {

	String selectCustomerNameById(int id);

	String selectEmployeeFirstNameById(int id);

	List<BoardDto> selectBoard();

	BoardDto getBoard(int id);

	int updateBoard(BoardDto board);

	int deleteBoard(int id);

	int insertBoard(BoardDto board);


}






