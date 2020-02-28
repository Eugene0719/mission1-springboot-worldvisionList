package com.example.demo.service.Impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.BoardDao;
import com.example.demo.model.BoardModel;
import com.example.demo.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao dao;

	@Override
	public List<BoardModel> printBoard()throws Exception {
		List<BoardModel> list = dao.getBoard();
		return list;
	}

	@Override
	public BoardModel Detail(BoardModel boardModel) throws Exception {

		return dao.Detail(boardModel);
	}

	@Override
	public void register(BoardModel boardModel) {
		dao.register(boardModel);
	}

	@Override
	public boolean modify(BoardModel boardModel) throws Exception {
		return dao.modify(boardModel);
		
	}

	@Override
	public void delete(int id) throws Exception {
		dao.delete(id);
	}

	@Override
	public BoardModel read(BoardModel boardModel) {
		// TODO Auto-generated method stub
		return dao.read(boardModel);
	}

}
