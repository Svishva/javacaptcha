<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="botDetect" uri="https://captcha.com/java/jsp"%>
<%@page import="com.captcha.botdetect.web.servlet.Captcha"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="stylesheet.css" type="text/css" />
<title>Insert title here</title>
</head>
<body>
        <s:form action="captchaAction" method="post"  theme="css_xhtml">
      <h1>BotDetect Java CAPTCHA Validation: <br /> Struts 2 Basic CAPTCHA Code Example</h1>
      <fieldset>
        <legend>Java CAPTCHA validation</legend>
        <label for="captchaCode">Retype the characters from the picture:</label>
      
        <!-- Adding BotDetect Captcha to the page -->    
        <botDetect:captcha id="exampleCaptcha" userInputID="captchaCode"/>
        
        <br/>
        <s:textfield name="captchaCode"/>
        <s:submit name="validateCaptchaButton" label="Validate" id="validateCaptchaButton"/>
      </fieldset> 
    </s:form>



</body>
</html>