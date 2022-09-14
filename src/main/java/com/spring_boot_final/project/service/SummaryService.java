package com.spring_boot_final.project.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring_boot_final.project.model.summary.TotalVO;

@Service
public class SummaryService {
	public String textSummary (TotalVO vo ) {
       
		String clientId = "yuk8q7vxmd"; //애플리케이션 클라이언트 아이디값";
        String clientSecret = "4oV1A3QTmd4fvjelyZdzmFGwPt0kQk2qxoj8T58a"; //애플리케이션 클라이언트 시크릿값";
        String json="";
        
        try {
            String apiURL = "https://naveropenapi.apigw.ntruss.com/text-summary/v1/summarize";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
            con.setRequestProperty("Content-Type", "application/json");
            // json = "{\"document\":{\"title\":\"'하루 2000억' 판 커지는 간편송금 시장\",\"content\":\"간편송금 이용금액이 하루 평균 2000억원을 넘어섰다. 한국은행이 17일 발표한 '2019년 상반기중 전자지급서비스 이용 현황'에 따르면 올해 상반기 간편송금서비스 이용금액(일평균)은 지난해 하반기 대비 60.7% 증가한 2005억원으로 집계됐다. 같은 기간 이용건수(일평균)는 34.8% 늘어난 218만건이었다. 간편 송금 시장에는 선불전자지급서비스를 제공하는 전자금융업자와 금융기관 등이 참여하고 있다. 이용금액은 전자금융업자가 하루평균 1879억원, 금융기관이 126억원이었다. 한은은 카카오페이, 토스 등 간편송금 서비스를 제공하는 업체 간 경쟁이 심화되면서 이용규모가 크게 확대됐다고 분석했다. 국회 정무위원회 소속 바른미래당 유의동 의원에 따르면 카카오페이, 토스 등 선불전자지급서비스 제공업체는 지난해 마케팅 비용으로 1000억원 이상을 지출했다. 마케팅 비용 지출규모는 카카오페이가 491억원, 비바리퍼블리카(토스)가 134억원 등 순으로 많았다.\"},\"option\":{\"language\":\"ko\",\"model\":\"news\",\"tone\":2,\"summaryCount\":3}}";
            json = JsonConverter(vo);
            con.setDoOutput(true);

            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));

            bw.write(json);
            bw.flush();
            bw.close();
            
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
            
            return new JSONObject(response.toString()).getString("summary");
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return null; // 받아온 거 보내기
    }
	
	// json 형식으로 변환
	public String JsonConverter(TotalVO vo ) throws JsonProcessingException {
		// TotalVO vo = new TotalVO();
		ObjectMapper mapper = new ObjectMapper();
		
//		DocumentVO docVo = new DocumentVO();
//		docVo.setTitle("하루 2000억' 판 커지는 간편송금 시장");
//		docVo.setContent("간편송금 이용금액이 하루 평균 2000억원을 넘어섰다. 한국은행이 17일 발표한 '2019년 상반기중 전자지급서비스 이용 현황'에 따르면 올해 상반기 간편송금서비스 이용금액(일평균)은 지난해 하반기 대비 60.7% 증가한 2005억원으로 집계됐다. 같은 기간 이용건수(일평균)는 34.8% 늘어난 218만건이었다. 간편 송금 시장에는 선불전자지급서비스를 제공하는 전자금융업자와 금융기관 등이 참여하고 있다. 이용금액은 전자금융업자가 하루평균 1879억원, 금융기관이 126억원이었다. 한은은 카카오페이, 토스 등 간편송금 서비스를 제공하는 업체 간 경쟁이 심화되면서 이용규모가 크게 확대됐다고 분석했다. 국회 정무위원회 소속 바른미래당 유의동 의원에 따르면 카카오페이, 토스 등 선불전자지급서비스 제공업체는 지난해 마케팅 비용으로 1000억원 이상을 지출했다. 마케팅 비용 지출규모는 카카오페이가 491억원, 비바리퍼블리카(토스)가 134억원 등 순으로 많았다.");
//		
//		OptionVO optVo = new OptionVO();
//		optVo.setLanguage("ko");
//		optVo.setModel("general");
//		optVo.setTone(3);
//		optVo.setSummaryCount(3);
//		
//		vo.setDocument(docVo);
//		vo.setOption(optVo);
		
		return mapper.writeValueAsString(vo);
		
		
		
	}
	
}





