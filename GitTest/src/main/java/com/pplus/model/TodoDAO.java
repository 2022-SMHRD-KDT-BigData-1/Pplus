package com.pplus.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TodoDAO {


	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	private String sql;

	public void connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_f_2_0115";
			String password = "smhrd2";

			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// todo DB�� ���� �� ���� ��ȣ, ���� ����, ���� ����, ���� �ۼ� ����, ������ ��ȣ, ȸ���� �г����� �Է�
	// todoSet�� �Է� ������ TodoDTO todo ��� ������ cnt(int)
	public int todoSet(TodoDTO todo) {
		connect();
		sql = "insert into todo values(seq_todo_num.nextval,?,?,sysdate,?,?)";

		cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, todo.getTodo_title());
			psmt.setString(2, todo.getTodo_content());
			psmt.setInt(3, todo.getP_num());
			psmt.setString(4, todo.getMember_nick());
		

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// todo DB�� �ִ� �ϳ��� todo �����͸� �����ϱ� ���ؼ� ȸ���� �г���, ���� ��ȣ�� ���Ͽ� ã��
	// ã�� �����͸� ���� �� ���� ����, ���� ������ �Է�
	// todoUpdate�� �Է� ������ TodoDTO todo ��� ������ cnt(int)
	public int todoUpdate(TodoDTO todo) {
		connect();

		sql = "update todo set todo_title=?, todo_content=? where m_nick=? and seq_todo_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, todo.getTodo_title());
			psmt.setString(2, todo.getTodo_content());
			psmt.setString(3, todo.getMember_nick());
			psmt.setInt(4, todo.getTodo_num());
			

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// todo DB�� ����Ǿ� �ִ� �����͸� �����ϱ� ���ؼ� ȸ���� �г���, ���� ��ȣ�� ã��
	// ã�� �����͸� ����
	// todoDelete�� �Է� ������ ȸ���� �г���(string), ���� ��ȣ(int) ��� ������ cnt(int)
	public int todoDelete(String nick, int num) {
		connect();

		sql = "delete from todo where m_nick=? and seq_todo_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	// todo DB�� ����� �����͸� ��ȸ�ϱ� ���ؼ� ȸ���� �г���, ���� ��ȣȣ ���Ͽ� ã��
	// ã�� �����͸� �����ֱ�
	// todoSelect�� �Է� ������ ȸ���� �г���, ���� ��ȣ ��� ������ TodoDTO todo
	public TodoDTO todoSelect(String nick, int num) {
		TodoDTO todo =null;
		connect();

		sql = "select * from todo where m_nick=? and seq_todo_num=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			psmt.setInt(2, num);

			rs = psmt.executeQuery();
			if (rs.next()) {
				todo = new TodoDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5), rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return todo;
	}
}