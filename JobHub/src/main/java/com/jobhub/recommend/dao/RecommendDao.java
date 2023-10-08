package com.jobhub.recommend.dao;

import java.util.Map;

public interface RecommendDao {

	public void personalRecommendUpdate(Map<String, Object> map);
	
	public void companyRecommendUpdate(Map<String, Object> map);

}
