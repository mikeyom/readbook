# readbook
  
Project Purpose:
I have created this project because I want to read more books but I don't have the time or lack a motivation to read a book. 
This project is in a development stage, require many changes to automate it. 
My environment is MacBook, AWS EC2 instance, DropBox, and Bash script. 

Project Outline:
My idea of this project is to read at least 10 pages a day, it sends an email once an hour from Monday to Friday between 9 AM to 6 PM. 
There is some manual process, I used OSX to separate an eBook in PDF format, I would upload the PDF files to my personal DropBox. 
I need to create share links from the DropBox manually. However, working on to create and get DropBox shared links using DropBox API. 

Prerequisite:
- OSX
- brew install poppler
- pdfseparate my_ebook.pdf  %d.pdf 
- Upload to your personal DropBox folder and create share links. 

###################################

Download the tar file

http://www.itmissioninfo.com/download/read_book.tar.gz 
or
wget http://www.itmissioninfo.com/download/read_book.tar.gz 

tar -zxvf read_book.tar.gz
crontab -e
10 * * * * /root/scripts/01_hourly_send_email.sh

###################################

Run the 02_setup_book.sh script which will create clash_of_clan folder and clash_of_clan.sh bash script. 

cd scripts
root@ip-172-31-14-225:~/scripts# ./02_setup_book.sh
Enter the book title >> clash_of_clan
Enter your email address >> mikeyom@gmail.com
What is the total number of pages >> 125

###################################

Enter all DropBox links you created

vi /root/scripts/clash_of_clan/06_ebook_file.txt 
https://www.dropbox.com/s/we0qyjdugsg/4.pdf?dl=0
https://www.dropbox.com/s/mbg1vurny5y/5.pdf?dl=0
https://www.dropbox.com/s/enod70982cy/6.pdf?dl=0
https://www.dropbox.com/s/ru8i182ky9xr/7.pdf?dl=0

################################### 

What I hope to do in the future with this project. 
User uploads the PDF file, a user enters an email, a user enters days and hours they want to receive the email. 

################################### 


