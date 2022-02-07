package com.pplus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DayplanDTO {
	// ���� ��ȣ, �ۼ���¥, ������ ��ȣ, ȸ���� �г��� ����
	private int dayplan_num;
	private String dayplan_date;
	private int p_num;
	private	String member_nick;
	
	//å �̸�, å ������, (��ü)�ϼ�, ������ �ϼ�, ������ ������, ���� ������, ���� üũ, ������ �ۼ���, �ϱ� �ۼ���, ���� �ۼ���
	private	String book_title;
	private	int book_page;
	private	String s_num_day;
	private	String achieve_study_day;
	private int achieve_study_page;
	private	int s_day_page;
	private int dayplan_check;
	private	String editor_date;
	private	String diary_date;
	private String todo_date;

}