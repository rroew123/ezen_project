package kr.co.yangdoll.aop.anno;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	@Before("excution(public * kr.co.yangdoll.service.. *(..))")
	public void before(JoinPoint joinPoint) {
		String aopInfo = joinPoint.getSignature().getName();
		System.out.println(aopInfo + "를 실행하기 전에 처리되는 내용임 before!!!!!!!!!");
		for(Object arg : joinPoint.getArgs()) {
			System.out.println("JoinPoint.getargs의 내용 : "+arg);
		}
	}
	
	@After("excution(public * kr.co.yangdoll.service.. *(..))")
	public void after(JoinPoint joinPoint) {
		String aopInfo = joinPoint.getSignature().getName();
		System.out.println(aopInfo + "를 실행한 후에 처리되는 내용임 after!!!!!!!!!");
		
	}
}
