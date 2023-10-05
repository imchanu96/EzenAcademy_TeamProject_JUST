package com.jobhub.ajax.service;

import java.util.HashMap;
import java.util.Map;

import com.jobhub.personal.dto.LetterDto;

public interface AjaxService {

	public Map<String, Object> showPersonalResume(int perNo);

	public LetterDto showPersonalLetter(HashMap<String, String> paramMap);

	public int countPersonalReview(HashMap<String, String> paramMap);

}
