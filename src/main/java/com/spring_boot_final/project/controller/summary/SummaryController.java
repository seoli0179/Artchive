package com.spring_boot_final.project.controller.summary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.spring_boot_final.project.model.summary.DocumentVO;
import com.spring_boot_final.project.model.summary.OptionVO;
import com.spring_boot_final.project.model.summary.TotalVO;
import com.spring_boot_final.project.service.SummaryService;

@Controller
public class SummaryController {
	
	
	@Autowired
	SummaryService summaryService;
	
	
//	테스트 
	
	@RequestMapping("/textSummary")
	@ResponseBody
	public String textSummary() throws JsonProcessingException {
		
		TotalVO vo = new TotalVO();
		
		DocumentVO docVo = new DocumentVO();
		docVo.setTitle("하루 2000억' 판 커지는 간편송금 시장");
		docVo.setContent("간편송금 이용금액이 하루 평균 2000억원을 넘어섰다. 한국은행이 17일 발표한 '2019년 상반기중 전자지급서비스 이용 현황'에 따르면 올해 상반기 간편송금서비스 이용금액(일평균)은 지난해 하반기 대비 60.7% 증가한 2005억원으로 집계됐다. 같은 기간 이용건수(일평균)는 34.8% 늘어난 218만건이었다. 간편 송금 시장에는 선불전자지급서비스를 제공하는 전자금융업자와 금융기관 등이 참여하고 있다. 이용금액은 전자금융업자가 하루평균 1879억원, 금융기관이 126억원이었다. 한은은 카카오페이, 토스 등 간편송금 서비스를 제공하는 업체 간 경쟁이 심화되면서 이용규모가 크게 확대됐다고 분석했다. 국회 정무위원회 소속 바른미래당 유의동 의원에 따르면 카카오페이, 토스 등 선불전자지급서비스 제공업체는 지난해 마케팅 비용으로 1000억원 이상을 지출했다. 마케팅 비용 지출규모는 카카오페이가 491억원, 비바리퍼블리카(토스)가 134억원 등 순으로 많았다.");
		
		OptionVO optVo = new OptionVO();
		optVo.setLanguage("ko");
		optVo.setModel("general");
		optVo.setTone(3);
		optVo.setSummaryCount(3);
		
		vo.setDocument(docVo);
		vo.setOption(optVo);
		
		
		// summaryService.test();
		return summaryService.textSummary(vo);
	}
	
	
}
