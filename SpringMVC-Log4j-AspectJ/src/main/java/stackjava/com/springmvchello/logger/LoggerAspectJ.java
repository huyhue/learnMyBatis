package stackjava.com.springmvchello.logger;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoggerAspectJ {

	private static final Logger logger = Logger.getLogger(LoggerAspectJ.class);

	@Before("execution(* stackjava.com.springmvchello.controller.HelloController.*(..))")
	public void logBefore(JoinPoint joinPoint) {
		logger.info("before method: " + joinPoint.getSignature().getName());
	}

	@After("execution(* stackjava.com.springmvchello.controller.HelloController.*(..))")
	public void logAfter(JoinPoint joinPoint) {
		logger.info("after method: " + joinPoint.getSignature().getName());
	}

	@AfterReturning(pointcut = "execution(* stackjava.com.springmvchello.controller.HelloController.*(..))",
			returning = "result")
	public void logAfterReturning(JoinPoint joinPoint, Object result) {
		logger.info("after return method : " + joinPoint.getSignature().getName());
		logger.info("Method returned value is : " + result);
	}

	@AfterThrowing(pointcut = "execution(* stackjava.com.springmvchello.controller.HelloController.*(..))",
			throwing = "error")
	public void logThrow(JoinPoint joinPoint, Throwable error) {
		logger.info("exception in method: " + joinPoint.getSignature().getName());
		logger.error("Exception is: " + error);
	}

}
