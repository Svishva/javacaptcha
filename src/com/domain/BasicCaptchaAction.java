package com.domain;

import com.captcha.botdetect.web.servlet.Captcha;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

public class BasicCaptchaAction extends ActionSupport {
  
  
	private static final long serialVersionUID = -7044077098770224065L;
private String captchaCode;

  public String getCaptchaCode() {
    return captchaCode;
  }

  public void setCaptchaCode(String captchaCode) {
    this.captchaCode = captchaCode;
  }
  
  public String execute() {
    return SUCCESS;
  }
  
  public void validate() {
    Captcha captcha = Captcha.load(ServletActionContext.getRequest(), "exampleCaptcha");
    boolean isHuman = captcha.validate(captchaCode);
    if (!isHuman) {
      addFieldError("captchaCode", "Incorrect code");
    }
    
    // reset captcha code textbox
    captchaCode = null;
  }
}