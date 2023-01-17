package com.multi.www.beach;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Component;

//https://puzzle.geovision.co.kr/map?lat=35.17322000002909&lng=128.9464100000385&zoom=13&poiId=11647&showFP=N
//부산 지역의 poid를 가지고 와서, 혼잡도 api를 이용함.
@Component
public class SK_API {
	private static final String GET = "GET";
	//private static final String USER_AGENT = "Mozilla/5.0";
	//private static final String DATA = "11647";
	public String main(ConfusionVO vo) throws Exception {
		String code = vo.getId();
		System.out.println(code);
		String location = "https://apis.openapi.sk.com/puzzle/congestion/rltm/pois/"+code;
		URL url = new URL(location);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		System.out.println(connection);
		
		connection.setRequestMethod(GET);
		connection.setRequestProperty("accept", "application/json");
		connection.setRequestProperty("appkey", "l7xx6afc9e3c4c744922b363451f952ce0d4");
		connection.setDoOutput(true);
//		DataOutputStream outputStream = new DataOutputStream(connection.getOutputStream());
//		outputStream.writeBytes(DATA);
//		outputStream.flush();
//		outputStream.close();
		
		//404 200번 코드옴
		int responseCode = connection.getResponseCode();
		
		System.out.println(responseCode);
		
		//Stream 강물 한글자를1byte//BufferedReader= 받아서 공간에 모아놓음 한글자를2byte
		//InputStreamReader : byte변환 글자만취급
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		StringBuffer stringBuffer = new StringBuffer();
		String inputLine;
		
		//readLineg 한줄씩꺼내옴 null이될떄까지 한줄씩읽어꺼내옴
		while ((inputLine = bufferedReader.readLine()) != null) {
			//한줄씩 stringBuffer에 모음
			stringBuffer.append(inputLine);
		}
		bufferedReader.close();
		
		String response = stringBuffer.toString();
		System.out.println(response);
		
		//JSONParser =JSON으로 변환
		JSONParser parser = new JSONParser();
		JSONObject jsonResult2 = (JSONObject) parser.parse(response.toString());
		System.out.println(jsonResult2);
		JSONObject contentsValue = (JSONObject)jsonResult2.get("contents"); //get(jsonKey)
		JSONObject rltmValue = (JSONObject)contentsValue.get("rltm");
		/*
		 * //혼잡도 double congestion = (double)rltmValue.get("congestion");
		 * System.out.println(rltmValue.get("congestion"));
		 */
		//혼잡도 레벨
		long congestionLevel = (long)rltmValue.get("congestionLevel");
		System.out.println(rltmValue.get("congestionLevel"));
		/*
		 * //날짜 String datetime = (String)rltmValue.get("datetime");
		 * System.out.println(rltmValue.get("datetime"));
		 */
		
		String result = "level10.png";
		if (congestionLevel <= 3) {
			result = "level3.png";
		} else if (congestionLevel <= 5) {
			result = "level5.png";
		} else if (congestionLevel <= 8) {
			result = "level8.png";
		}
		
		return result;
	}

}