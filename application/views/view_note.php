<?php
$url = $this->config->base_url(); 
$current_url = current_url();
// var_dump($current_url);die();
if($_SERVER['SERVER_NAME'] == '10.0.0.58'){
 $url = 'http://10.0.0.58/ci3/';
 $current_url = str_replace('localhost', '10.0.0.58', current_url());
}
if($_SERVER['SERVER_NAME'] != 'localhost'){
  // var_dump($_SERVER['SERVER_NAME']);die();
 $url = 'http://'.$_SERVER['SERVER_NAME'].'/ci3/';
 $current_url = str_replace('localhost', $_SERVER['SERVER_NAME'], current_url());
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Try</title>

    <!-- Bootstrap -->
    <link href="<?php echo $url; ?>public/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $url; ?>public/css/index.css?v=<?php echo rand()?>" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
      var url_home = '<?php echo $current_url;?>';
    </script>
  </head>
  <body>
        
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a id="onecin-header" class="navbar-brand" href="#">ONECIN</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <!-- <ul class="nav navbar-nav">
            <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form> -->
          <ul class="nav navbar-nav navbar-right">
            <li><a id="login_fb" href="#" onclick="login_fb();">Login by FB</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

    <div class="container">
      <div class="row">


        <div class="col-md-8 col-sx-12">
          <h3 class="text-center">
            Try
          </h3>

          <div class="alert alert-success alert-dismissable fade in" style="display: none;">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
              <strong>Success!</strong> :)
          </div>
          <div class="alert alert-warning alert-dismissable fade in" style="display: none;">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
            <strong>Warning!</strong> :( Text does not blank!
          </div>

          <form method="post">
            <div class="form-group">
              <label for="exampleInputFile">Something</label>
              <div class="extract_url">
                <!-- <img id="loading_indicator" src="<?php echo $url; ?>public/img/ajax-loader.gif"> -->
                <textarea id="get_url" placeholder="Enter everything here" class="form-control get_url_input" spellcheck="false" rows="4"></textarea>
                <div id="results"></div>
            
              </div>
            </div>
            <button type="button" id="set_note" class="btn btn-default" >Note</button> <!--disabled-->

          </form>


          <?php if(isset($data)): ?>
          <div class="content">
            <?php foreach($data as $item):?>
            <div class="item-content" id="note<?= $item['id']?>" >
              <div class="main-text"><?= $item['note']?></div>
              <div class="extra-text">
                <!-- extra info  -->
                <!-- <span class="glyphicon glyphicon-heart-empty oc-lg" aria-hidden="true"></span>
                <span class="glyphicon glyphicon-heart oc-lg" aria-hidden="true"></span> -->
                <a target="_blank" href="index.php/note/detail/<?= $item['id']?>">View</a> | 
                <?= $item['userID']?>
              </div>
            </div>
            <?php endforeach?>
          </div>
        <?php else: 
          echo 'ngon';
        ?>

        <?php endif; ?>
        </div>




        <div class="col-md-4">
          <?php 
            // echo '<pre>';
            // var_dump($_SERVER);
            // echo '</pre>';
          ?>
        </div>
      </div>
      <!-- <div class="row">
        <div class="col-md-8 col-sx-12">
          <div
            class="fb-like"
            data-share="true"
            data-width="450"
            data-show-faces="true">
          </div>
        </div>
      </div>

    </div> -->

    <div class="container bg-0">
      
    </div>
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo $url; ?>public/js/jquery-3.1.1.js"></script>
    <script src="<?php echo $url; ?>public/js/bootstrap.min.js"></script>
    <script src="<?php echo $url; ?>public/js/note.js?v=<?php echo rand();?>"></script>
    <script src="<?php echo $url; ?>public/js/fb.js?v=<?php echo rand()?>"></script>
    <script src="<?php echo $url; ?>public/js/utility.js?v=<?php echo rand();?>"></script>
    <script src="<?php echo $url; ?>public/js/js.config.js"></script>
  </body>
</html>