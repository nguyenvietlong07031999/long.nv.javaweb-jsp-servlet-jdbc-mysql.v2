package jp.vn.yuanyuan.paging;

import jp.vn.yuanyuan.sort.Sorter;

public class PageRequest implements Pageble {

	
	private Integer page;
	private Integer maxPageItem;
	private Sorter sorter;
	private String strCategory;
	
	public PageRequest(Integer page,Integer maxPageItem, Sorter sorter,String strCategory) {
		this.page=page;
		this.maxPageItem=maxPageItem;
		this.sorter=sorter;
		this.strCategory=strCategory;
	}
	
	@Override
	public Integer getPage() {
		return this.page;
	}

	@Override
	public Integer getOffset() {
		if(this.page!=null&&this.maxPageItem!=null) {
			return (this.page-1) * this.maxPageItem;
		}
		return null;
	}

	@Override
	public Integer getLimit() {
		return this.maxPageItem;
	}

	@Override
	public Sorter getSorter() {
		if(this.sorter!=null) {
			return this.sorter;
		}
		return null;
	}

	@Override
	public String getStrCategory() {
		if(this.strCategory!=null) {
			return this.strCategory;
		}
		return null;
	}

	
	
	

}
