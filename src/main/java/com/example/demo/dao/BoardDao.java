package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.BoardModel;

public interface BoardDao {
	List<BoardModel> getBoard();

	BoardModel Detail(BoardModel boardModel);

	public void register(BoardModel boardModel);
	
	public boolean modify(BoardModel boardModel);
	
	BoardModel read(BoardModel boardModel);
	
	public void delete(int id);
}
