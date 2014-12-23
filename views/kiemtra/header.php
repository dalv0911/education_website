<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><?php echo isset($title)?$title:'Kiểm tra';?></title>

        <script type="text/javascript" src="bootstrap/js/jquery-1.11.0.js"></script>
        <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/kiemtra.js"></script>
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
                     "advlist autolink link image lists charmap preview hr anchor pagebreak spellchecker",
                     "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                     "save table contextmenu directionality emoticons template paste textcolor"
               ],
               content_css: "css/content.css",
               toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons", 
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
        <link href="bootstrap/css/damvc.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="bootstrap/css/plugins/morris.css" rel="stylesheet">
        <!-- //   <link rel="stylesheet" type="text/css" href="bootstrap/css/full-site.css"> -->
        <!-- Custom Fonts -->
        <link href="bootstrap/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="col-lg-10 col-lg-offset-1">
