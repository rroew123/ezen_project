package kr.co.yangdoll.aop.xml;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.stereotype.Component;


public class PerformanceAdvice {
	public Object trace(ProceedingJoinPoint joinPoint ) {
		//타겟 멧드의 정보를 문자열로 얻어오기
		String targetMemthodInfo = joinPoint.getSignature().getName();
		System.out.println(targetMemthodInfo + "시작");
		long start = System.currentTimeMillis();
		//타겟 메소드가 실행되기 전에 수행할 동작을 정의
		
		// 아래의 트라이 캐치는 고정된 내용이다.
		try {
			Object result;
			result = joinPoint.proceed();
			return result;
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			long end = System.currentTimeMillis();
			System.out.println(targetMemthodInfo + "종료");
			System.out.println(targetMemthodInfo + "실행시간" + (end - start) + " ms");
		}
		
		
		return null;
	}
}
