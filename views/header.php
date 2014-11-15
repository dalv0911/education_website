<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><?php echo isset($title)?$title:'Education Website';?></title>

        <script type="text/javascript" src="bootstrap/js/jquery-1.11.0.js"></script>
        <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/check_ajax.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script type="text/javascript" src="bootstrap/js/plugins/morris/raphael.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/plugins/morris/morris.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/plugins/morris/morris-data.js"></script>
        <script type="text/javascript" src="bootstrap/tinymce/tinymce.min.js" ></script>
        
        <script type="text/javascript">
            tinymce.init({
                selector: "textarea.content",
                theme: "modern",
                plugins: [
                     "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                     "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                     "save table contextmenu directionality emoticons template paste textcolor"
               ],
               content_css: "css/content.css",
               toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons", 
               style_formats: [
                    {title: 'Bold text', inline: 'b'},
                    {title: 'Red text', inline: 'span', styles: {color: '#ff0000'}},
                    {title: 'Red header', block: 'h1', styles: {color: '#ff0000'}},
                    {title: 'Example 1', inline: 'span', classes: 'example1'},
                    {title: 'Example 2', inline: 'span', classes: 'example2'},
                    {title: 'Table styles'},
                    {title: 'Table row 1', selector: 'tr', classes: 'tablerow1'}
                ]
             }); 
        
        </script>
        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="bootstrap/css/sb-admin.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="bootstrap/css/plugins/morris.css" rel="stylesheet">
        <!-- //   <link rel="stylesheet" type="text/css" href="bootstrap/css/full-site.css"> -->
        <!-- Custom Fonts -->
        <link href="bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>

    <div class="col-lg-10 col-lg-offset-1">
        
        <div class="row">
             <?php
                if(isset($_SESSION['username'])){
            ?>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php 
                            if(isset($_SESSION['username'])) echo $_SESSION['username'];?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="index.php?rt=logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <?php
                }else{
            ?>
            <p class="col-lg-3 col-lg-offset-9">
                <a href="?rt=login" class="btn btn-success btn" role="button"><i class="glyphicon glyphicon-user"></i> Đăng Nhập</a>
                <a href="?rt=register" class="btn btn-primary btn" role="button"><i class="glyphicon glyphicon-hand-right"></i> Đăng ký</a>
            </p>
            <?php
                }
            ?>
        </div>
        <div class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../education_website">DA MVC</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <?php
                            $i=0;
                            while(!empty($menu[$i])){
                                echo '
                                    <li>
                                        <a href="?rt=menu&id='.$menu[$i]['id'].'" >'.$menu[$i]['name'].'</a>
                                        
                                    </li>
                                ';
                                $i++;
                            }
                        ?>
                        
                    </ul>
                </div>
                        <!--/.nav-collapse -->
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
   