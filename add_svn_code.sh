# !/bin/bash


do_main(){

	cp /usr/share/code/resources/app/product.json /tmp/product.json
	STR=`grep extensionAllowedProposedApi /tmp/product.json`
	line=`grep -n extensionAllowedProposedApi /tmp/product.json| awk -F':' '{print $1}' `
	count=`echo $STR |wc -c `
	res=`echo "   "${STR:0:$count-2}", \"johnstoncode.svn-scm\"],"`
	sed -i  ''"$line"'s/^.*$/'"$res"'/' /tmp/product.json
	
   sudo cp /tmp/product.json /usr/share/code/resources/app/product.json

}
do_main
