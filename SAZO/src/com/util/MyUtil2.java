package com.util;

public class MyUtil2 {
	
	public int getPageCount(int numPerPage,int dataCount) {
		
		int pageCount = 0;
		
		pageCount = dataCount / numPerPage;
		
		if(dataCount % numPerPage != 0) {
			pageCount++;
		}
		return pageCount;
	}

	//������ ó�� �޼ҵ�
	
	public String pageIndexList(int currentPage, int totalPage, String listUrl) {
		
		int numPerBlock = 5; //������ 6 7 8 9 10 �������� �� �� �Ѹ��� ����
		int currentPageSetup; //��
		int page; //for���� i�� ���� �� 6 7 8 9 10
		
		StringBuffer sb = new StringBuffer(); // ��Ʈ���� �����ִ� ����Ŭ����.
		
		if(currentPage==0 || totalPage==0) {
			return "";
		}
		//list.jsp?pageNum=2
		//list.jsp?searchKet=subject&searchValue=aa &pageNum=2
		// �� ���� ���� �Ѿ�� �� �ִ�. �����͸� �� �� �ְ� �Ʒ��� �� �ü��ִ�.
		if(listUrl.indexOf("?")!=-1) {
			
			listUrl = listUrl + "&";//?ã��
		}else {
			listUrl = listUrl + "?";
		}
		
		//������ 1 2 3 4 5 ������
		//������ 6 7 8 9 10 ������
		//������ 11 12 13 14 15 ������
		currentPageSetup = (currentPage/numPerBlock)*numPerBlock; 
		
		if(currentPage % numPerBlock ==0) {
			currentPageSetup = currentPageSetup - numPerBlock;
		}
		
		//������
		if(totalPage> numPerBlock && currentPageSetup > 0 ) { //i�� 0���� ũ�� ������ ���ƶ�.
			
			sb.append("<a href=\"" + listUrl + "pageNum=" + currentPageSetup + "\">������</a>&nbsp;");
			
			//<a href="list.jsp?pageNum=2>������</a>
		}
		
		//�ٷΰ���������(6 7 8 9 10)
		page = currentPage +1;
		
		while(page <= totalPage && page <= (currentPageSetup+numPerBlock)) {
			
			if(page==currentPage) {
				
				sb.append("<font color=\"Fuchia\">" + page + "</font>&nbsp;");
				//<font color = "Fuchia">9</font>&nbsp
			}else {
				sb.append("<a href=\"" + listUrl + "pageNum=" + page + "\">" + page + "</a>&nbsp;");
				//<a href="list.jsp?pageNum=7">7</a>&nbsp;
			}
			
			page++;
		}
		
		//������
		//������ 6 7 8 9 10 ������
		//������ 11 12
		if(totalPage - currentPageSetup > numPerBlock) {
			
			sb.append("<a href=\"" + listUrl + "pageNum=" + page + "\">������</a>&nbsp;");
			
			//<a htef=\"list.jsp?pageNum=11">������</a>&nbsp;
			
		}
		return sb.toString();
		
		
	}
	
	
	
	
	
}
