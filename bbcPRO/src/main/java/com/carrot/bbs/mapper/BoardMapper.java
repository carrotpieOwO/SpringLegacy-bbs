package com.carrot.bbs.mapper;

import java.util.List;

import com.carrot.bbs.dto.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(int bno);
	public void delete(int bno);
	public int update(BoardVO board);
}
