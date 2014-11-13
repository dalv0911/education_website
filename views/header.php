<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><?php echo isset($title)?$title:'';?></title>

        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="bootstrap/css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="bootstrap/css/plugins/morris.css" rel="stylesheet">
        <!-- //   <link rel="stylesheet" type="text/css" href="bootstrap/css/full-site.css"> -->
        <!-- Custom Fonts -->
        <link href="bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
         <script src="bootstrap/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bootstrap/js/bootstrap.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="bootstrap/js/plugins/morris/raphael.min.js"></script>
        <script src="bootstrap/js/plugins/morris/morris.min.js"></script>
        <script src="bootstrap/js/plugins/morris/morris-data.js"></script>
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
    </head>
    <body>
    <div class="col-lg-10 col-lg-offset-1">
        <!--  Search -->
            <div class="row">
                <div class="col-lg-4 col-md-offset-8">
                    <div class="input-group">
                        <input type="text" class="form-control" name="search">
                        <span class="input-group-btn">
                            <button class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                        </span>
                    </div>
                </div>
            </div>
        <!-- End search -->
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
                                        <a href="?rt=loaibai&cat_id='.$menu[$i]['id'].'" >'.$menu[$i]['name'].'</a>
                                        
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
            <div class="col-lg-8">
   