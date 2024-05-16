import smtplib
from smtplib import SMTP
from email.message import EmailMessage
def sendmail(to,subject,body):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('muralikrishnasahu001@gmail.com','xazx sqcr qjun axtw')
    msg=EmailMessage()
    msg['FROM']='muralikrishnasahu001@gmail.com'
    msg['To']=to
    msg['Subject']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.quit()