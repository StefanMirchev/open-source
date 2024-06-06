<html>
      <head>
          <title>Bxog</title>
          <meta charset="UTF-8" />
      </head>

  <body>
    <table border="1">
     <tr>
       <td>Дата</td>
       <td>Зона</td>
       <td>Kлиент</td>
       <td>Продукт</td>
       <td>Количество</td>
       <td>Цена</td>
       <td>Тотал</td>
     </tr>
     <?php
      foreach($data as $v){
     echo '<tr>
       <td>'.$v['date'].'</td>
       <td>'.$v['zone'].'</td>
       <td>'.$v['user']   .'</td>
       <td>'.$v['product'].'</td>
       <td>'.$v['q']      .'</td>
       <td>'.$v['price']  .' </td>
       <td>'.$v['total']  .'</td>
     </tr>';
                        }
     ?>

    </table>
  <body>
<html>  

