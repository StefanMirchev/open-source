<?php
 $raw_data=file('table.csv');
  $data=[];
  foreach($raw_data as $v){
	$a0=explode(',',$v);


     $data[]=[
     	'date'=>$a0[0],
     	'zone'=>$a0[1],
     	'user'=>$a0[2],
     'product'=>$a0[3],
           'q'=>$a0[4],
       'price'=>$a0[5],
       'total'=>$a0[6]
     ];
}
# exec("/home/inter/work/proc/myweb.sh");

 echo shell_exec('sh /home/inter/work/proc/myweb.sh');
require "table1.php";
?>
