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

	//페이지 처리 메소드
	
	public String pageIndexList(int currentPage, int totalPage, String listUrl) {
		
		int numPerBlock = 5; //◀이전 6 7 8 9 10 다음▶의 몇 개 뿌릴지 갯수
		int currentPageSetup; //◀
		int page; //for문에 i와 같은 값 6 7 8 9 10
		
		StringBuffer sb = new StringBuffer(); // 스트링을 도와주는 보조클래스.
		
		if(currentPage==0 || totalPage==0) {
			return "";
		}
		//list.jsp?pageNum=2
		//list.jsp?searchKet=subject&searchValue=aa &pageNum=2
		// 두 개의 값이 넘어올 수 있다. 위엣것만 올 수 있고 아래것 만 올수있다.
		if(listUrl.indexOf("?")!=-1) {
			
			listUrl = listUrl + "&";//?찾기
		}else {
			listUrl = listUrl + "?";
		}
		
		//◀이전 1 2 3 4 5 다음▶
		//◀이전 6 7 8 9 10 다음▶
		//◀이전 11 12 13 14 15 다음▶
		currentPageSetup = (currentPage/numPerBlock)*numPerBlock; 
		
		if(currentPage % numPerBlock ==0) {
			currentPageSetup = currentPageSetup - numPerBlock;
		}
		
		//◀이전
		if(totalPage> numPerBlock && currentPageSetup > 0 ) { //i가 0보다 크면 만들지 말아라.
			
			sb.append("<a href=\"" + listUrl + "pageNum=" + currentPageSetup + "\">◀이전</a>&nbsp;");
			
			//<a href="list.jsp?pageNum=2>◀이전</a>
		}
		
		//바로가기페이지(6 7 8 9 10)
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
		
		//다음▶
		//◀이전 6 7 8 9 10 다음▶
		//◀이전 11 12
		if(totalPage - currentPageSetup > numPerBlock) {
			
			sb.append("<a href=\"" + listUrl + "pageNum=" + page + "\">다음▶</a>&nbsp;");
			
			//<a htef=\"list.jsp?pageNum=11">다음▶</a>&nbsp;
			
		}
		return sb.toString();
		
		
	}
	
	
	
	
	
}

