package com.wenlan.website.utils;


import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
/**
 * 发送邮件
 * @类 名 : SendEmail
 * @功能描述 : TODO
 * @修改备注 : ：2018-10-25 静态数据修改为配置文件，添加发送端口，添加发件人昵称
 */
public class SendEmail {
	
	/** 发送邮箱账号 */
	private static String USERNAME ;
	
	//** 发送邮箱密码 *//
	private static String PASSWORD;
	
	//** 发送邮件邮件服务器 *//*
	private static String HOST ;
	
	//** 端口 *//
	private static Integer PORT;

	/**
	 * 发送普通邮件
	 * @throws Exception 
	 * @Title : send
	 * @功能描述 : TODO
	 * @设定文件 : @param toMail 接收人邮箱
	 * @设定文件 : @param message 消息内容
	 * @设定文件 : @param subject 邮件主题
	 * @设定文件 : @return
	 * @返回类型 : boolean
	 * @throws :
	 */
//	public static void main(String[] args){
//		try {
//			sendMail("1846038231@qq.com","哈哈","哈哈哈哈哈哈");
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	/*/*, String subject, String message*/*/
	 public static void sendMail(String toMail,String code,String username) throws Exception {
//		InputStream input = SendEmail.class.getClassLoader().getResourceAsStream("emailconfig.properties");
//		Properties prop = new Properties();
//		prop.load(input);
		 System.out.println(toMail+"邮箱"+code+"验证码"+username+"用户名");
		String SMTP= "smtp.163.com";
        String port= "25";
        String EMAIL= "wenlan8231@163.com";
        String PWD= "VRREBRNKDYYYUJCX";
        String title= "验证码";
        HOST=SMTP;
        PORT=Integer.parseInt(port);
        USERNAME=EMAIL;
        PASSWORD=PWD;
	    Properties p = new Properties();  
	    // 设置163的SMTP服务器地址
	    p.put("mail.smtp.host", HOST);
	    p.put("mail.smtp.auth", "true");  
	    p.put("mail.smtp.port", PORT);
	    p.put("mail.smtp.starttls.enable", "true");
	   Authenticator authenticator = new Authenticator() {  
	        @Override  
	        protected PasswordAuthentication getPasswordAuthentication() {  
	        	// 设置公司的邮箱号和邮箱密码
	            return new PasswordAuthentication(USERNAME, PASSWORD);  
	        }  
	    }; 
	   // MyAuthenticator authenticator = new MyAuthenticator(USERNAME, PASSWORD);
	    //获得一个带有authenticator(认证器)的session实例   
	    Session sendMailSession = Session.getDefaultInstance(p,authenticator);  
	    Message mailMessage = new MimeMessage(sendMailSession); 
     
    	// 设置发件人 构建邮件
        Address from = new InternetAddress(USERNAME);  
        mailMessage.setFrom(from);  
        String nick="";
        try {    
        	nick=javax.mail.internet.MimeUtility.encodeText(title);    
        } catch (UnsupportedEncodingException e) {    
        	e.printStackTrace();    
        }  
        mailMessage.setFrom(new InternetAddress(nick+" <"+from+">"));
        // 设置收件人邮箱地址
        Address to = new InternetAddress(toMail);//设置接收人员  
        mailMessage.setRecipient(Message.RecipientType.TO, to);  
        // 设置邮件标题
//        mailMessage.setSubject(subject);
        mailMessage.setSubject("您好,您的验证码请注意查收！");
        // 构建邮件内容
//        String content = message;
        String content = "<!DOCTYPE html> <html lang='en'> <head>     <meta charset='UTF-8'>     <style>         *{margin:0;padding:0}         .title, .copy-right{             width: 100%;             height: 50px;             line-height: 50px;             background: brown;             box-sizing: border-box;             padding: 0 20px;             font-size: 18px;             color: #fff;         }         .content{ padding: 20px;             background: #FFFFCC;             min-height: 300px;    box-sizing: border-box;    overflow: hidden;         }  .content1{  padding: 10px;background: #ffffcc;} .content h3{    font-size:24px;    color: #333;    margin: 50px 0;   }   .content span{    font-size: 18px;    color: #333;   }         .copy-right{             text-align: center;  font-size:12px;    }     </style> </head> <body>     <div class='title'>         院校失物招领网：     </div>     <div class='content'>   <h3>\n"+username+"您好！</h3>   <span>您此次操作的验证码为："+code+" <br/>（请妥善保管）！</span>     </div>  <div class='content1'>   <!-- < img src='http://219.148.186.141:8442/service_usercenter/static/login/images/email.png' height='120px' width='295px'> </div>-->   <div class='copy-right'>         <p><span>声明：</span>纯测试使用验证码 </p > </div> </body> </html>";
        // 设置邮件内容
        // mailMessage.setText(url); 
        // 设置正文与MIME编码类型
        mailMessage.setContent(content,"text/html;charset=UTF-8");
        // 发送邮件  
        Transport.send(mailMessage);  
	   
	}  
	   
	/**
	 * 发送带附件的邮件
	 * @Title : sendMail
	 * @功能描述 : TODO
	 * @设定文件 : @param subject 邮件主题
	 * @设定文件 : @param toMail 接收人邮箱
	 * @设定文件 : @param content 内容
	 * @设定文件 : @param files 文件路径:可以多个
	 * @设定文件 : @return
	 * @返回类型 : boolean true:发送成功|false:发送失败
	 * @throws :
	 */
//	public static boolean sendMailFile(String subject, String toMail, String content, String... files) {
//        boolean isFlag = false;
//        try {
//            Properties props = new Properties();
//            props.put("mail.smtp.host", HOST);
//            props.put("mail.smtp.auth", "true");
//            Authenticator authenticator = new Authenticator() {
//                @Override
//                protected PasswordAuthentication getPasswordAuthentication() {
//                	// 设置公司的邮箱号和邮箱密码
//                    return new PasswordAuthentication(USERNAME,PASSWORD);
//                }
//            };
//            Session session = Session.getDefaultInstance(props,authenticator);
//            session.setDebug(false);
//            MimeMessage message = new MimeMessage(session);
//            try {
//                message.setFrom(new InternetAddress(USERNAME, subject));
//                message.addRecipient(Message.RecipientType.TO,
//                        new InternetAddress(toMail));
//                message.setSubject(subject);
//                message.addHeader("charset", "UTF-8");
//
//                /*添加正文内容*/
//                Multipart multipart = new MimeMultipart();
//                BodyPart contentPart = new MimeBodyPart();
//                contentPart.setText(content);
//
//                contentPart.setHeader("Content-Type", "text/html; charset=GBK");
//                multipart.addBodyPart(contentPart);
//
//                /*添加附件*/
//                for (String file : files) {
//                    File usFile = new File(file);
//                    MimeBodyPart fileBody = new MimeBodyPart();
//                    DataSource source = new FileDataSource(file);
//                    fileBody.setDataHandler(new DataHandler(source));
//					BASE64Encoder enc = new BASE64Encoder();
//                    fileBody.setFileName("=?GBK?B?"
//                            + enc.encode(usFile.getName().getBytes()) + "?=");
//                    multipart.addBodyPart(fileBody);
//                }
//
//                message.setContent(multipart);
//                message.setSentDate(new Date());
//                message.saveChanges();
//                Transport transport = session.getTransport("smtp");
//                transport.connect(HOST, PORT, USERNAME, PASSWORD);
//                transport.sendMessage(message, message.getAllRecipients());
//                transport.close();
//                isFlag = true;
//            } catch (Exception e) {
//                isFlag = false;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return isFlag;
//    }
	    
}
