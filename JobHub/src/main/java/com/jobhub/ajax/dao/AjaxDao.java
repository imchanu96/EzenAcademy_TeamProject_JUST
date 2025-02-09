package com.jobhub.ajax.dao;

import java.util.HashMap;

import com.jobhub.personal.dto.LetterDto;
import com.jobhub.personal.dto.ResumeDto;
import com.jobhub.review.dto.ReviewDto;

public interface AjaxDao {

	public ResumeDto showPersonalResume(HashMap<String, String> paramMap);

	public LetterDto showPersonalLetter(HashMap<String, String> paramMap);

	public int countPersonalReview(HashMap<String, String> paramMap);

}
