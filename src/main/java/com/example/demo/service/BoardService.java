package com.example.demo.service;

import java.util.List;

import com.example.demo.model.BoardModel;

public interface BoardService {
	List<BoardModel> printBoard() throws Exception;

	BoardModel Detail(BoardModel boardModel)throws Exception;

	public void register(BoardModel boardModel)throws Exception;
	
	public boolean modify(BoardModel boardModel)throws Exception;

	public void delete(int id) throws Exception;

	BoardModel read(BoardModel boardModel);

}
