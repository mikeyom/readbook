#!/bin/bash
# mikeyom@gmail.com

my_path=/root/scripts
my_tmp_path=/root/scripts/templates

clear
echo ""
echo ""
read -p "Enter the book title >> " book
echo ""
read -p "Enter your email address >> " email
my_name=`echo $email | cut -d '@' -f1`
my_domain=`echo $email | cut -d '@' -f2`
my_email="$my_name\@$my_domain"

echo ""
read -p "What is the total number of pages >> " total
echo ""

mkdir -p $my_path/$book
cp /root/scripts/templates/01_default_hr.txt $my_path/$book/
echo "1" > $my_path/$book/02_current_page.txt
echo "$total" > $my_path/$book/03_total_page.txt
echo "$total" > $my_path/$book/04_pages_to_read.txt
touch $my_path/$book/05_send_email.txt
touch $my_path/$book/06_ebook_file.txt

echo "cat $my_tmp_path/ebook.txt | perl -pi -e 's/BOOK/$book/g | s/EMAIL/$my_email/g'" > $my_tmp_path/command.txt
bash $my_tmp_path/command.txt | tee -a $my_path/$book.sh
chmod +x $my_path/$book.sh
rm -f $my_tmp_path/command.txt
echo "$my_path/$book.sh" >> $my_path/01_hourly_send_email.sh
