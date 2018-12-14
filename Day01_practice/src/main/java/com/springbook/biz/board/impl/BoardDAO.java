package com.springbook.biz.board.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springbook.biz.board.BoardVO;

@Repository("board")
public class BoardDAO {

//  JDBC ���� ����
//	private Connection conn = null;
//	private PreparedStatement stmt = null;
//	private ResultSet rs = null;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	

	// SQL ��ɾ��
	private final String BOARD_INSERT = "insert into board(seq, title, writer, content) "
			+ "values((select nvl(max(seq),0)+1 from board ALIAS_FOR_SUBQUERY),?,?,?)";
	private final String BOARD_UPDATE = "update board set title=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete board where seq=?";
	private final String BOARD_GET = "select * from board where seq=?";
	private final String BOARD_LIST = "select * from board order by seq desc";

	// CRUD ����� �޼ҵ� ����
	// �� ���
	
	public void insertBoard(BoardVO vo) {
		System.out.println("===> JDBC�� insertBoard() ��� ó��");
		jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent());
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_INSERT);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getWriter());
//			stmt.setString(3, vo.getContent());
//			stmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
	}

	
	public void updateBoard(BoardVO vo) {
		System.out.println("===> JDBC�� updateBoard() ��� ó��");
		jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_UPDATE);
//			stmt.setString(1, vo.getTitle());
//			stmt.setString(2, vo.getWriter());
//			stmt.setInt(3, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
	}

	
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> JDBC�� deleteBoard() ��� ó��");
		jdbcTemplate.update(BOARD_DELETE,vo.getSeq());
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_DELETE);
//			stmt.setInt(1, vo.getSeq());
//			stmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
	}

	
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> JDBC�� getBoard() ��� ó��");
		Object[] args = {vo.getSeq()};
		return jdbcTemplate.queryForObject(BOARD_GET, args,new BoardRowMapper());
//		BoardVO board = null;
//
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_GET);
//			stmt.setInt(1, vo.getSeq());
//			rs = stmt.executeQuery();
//			if (rs.next()) {
//				board = new BoardVO();
//				board.setSeq(rs.getInt("SEQ"));
//				board.setTitle(rs.getString("TITLE"));
//				board.setWriter(rs.getString("WRITER"));
//				board.setContent(rs.getString("CONTENT"));
//				board.setRegDate(rs.getDate("REGDATE"));
//				board.setCnt(rs.getInt("CNT"));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return board;
	}

	
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> JDBC�� getBoardList() ��� ó��");
		return jdbcTemplate.query(BOARD_LIST, new BoardRowMapper));
//		List<BoardVO> boardList = new ArrayList<BoardVO>();
//
//		try {
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(BOARD_LIST);
//			rs = stmt.executeQuery();
//			while (rs.next()) {
//				BoardVO board = new BoardVO();
//				board.setSeq(rs.getInt("SEQ"));
//				board.setTitle(rs.getString("TITLE"));
//				board.setWriter(rs.getString("WRITER"));
//				board.setContent(rs.getString("CONTENT"));
//				board.setRegDate(rs.getDate("REGDATE"));
//				board.setCnt(rs.getInt("CNT"));
//				boardList.add(board);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return boardList;
	}
}
class BoardRowMapper implements RowMapper<BoardVO>
{
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO board = new BoardVO();
		board.setSeq(rs.getInt("SEQ"));
		board.setTitle(rs.getString("TITLE"));
		board.setWriter(rs.getString("WRITER"));
		board.setContent(rs.getString("CONTENT"));
		board.setRegDate(rs.getDate("REGDATE"));
		board.setCnt(rs.getInt("CNT"));
		return board;
		
	}
}
