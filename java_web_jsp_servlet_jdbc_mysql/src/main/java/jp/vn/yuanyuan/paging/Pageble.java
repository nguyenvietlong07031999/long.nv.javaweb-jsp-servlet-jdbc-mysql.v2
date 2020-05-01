package jp.vn.yuanyuan.paging;

import jp.vn.yuanyuan.sort.Sorter;

public interface Pageble {

	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
	String getStrCategory();
}
