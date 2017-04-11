<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Form Design</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/styleH.css">
  <script src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
</head>
<body>
  
<div id="formWrapper">
  <center><img src="image/logo-home.png" alt="logo" align="middle"></center>
  <div id="formLog">
    <div class="verticalLine">
      <h2>¿Has olvidado tu contraseña?</h2>
    </div>
    <div class="logo">
    <div class="container">
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <br>
    <br>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="form-group required">
          <div class="col-sm-10">
            <div class="form-item">
            <label class="formLabel">Correo electrónico</label>
            <input type="text" name="email" value="<?php echo $email; ?>" id="input-email email" class="form-control form-style"/>
            </div>
          </div>
        </div>

        <br>
        <div class="buttons clearfix">
          <!--<div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>-->
            <div class="form-item">
              <input type="submit" value="Recordar mi contraseña" class="register btn btn-primary" />
              <div class="clear-fix"></div>
            </div>
        </div>
      </form>
      <div class="register">
        <div style="text-align: center">Te enviaremos la contraseña al correo electrónico asociado a tu cuenta</div>
        <br>
      </div>
      <?php echo $content_bottom; ?>
</div>
</div>
</div>
</div>
</div>

<div style='position:fixed; bottom:0px; width: 100%'>
<table style="width:100%; border:.3px;" border="1" cellpadding="0" bgcolor="white" cellspacing="0" style="border-collapse:collapse;">
    <tbody>
        <tr>
            <td ng-click="Cancel()"  aria-expanded="false" style="width:33.3%;text-align:center;padding:10px 0 10px 0;cursor:pointer">
                <font size="4">Políticas de Privacidad</font>
            </td>
            <td ng-click="Proceed()" aria-expanded="false" style="width:33.3%;text-align:center;padding:10px 0 10px 0;cursor:pointer">
                <font size="4">Condiciones del Servicio</font>
            </td>
            <td ng-click="Proceed()" aria-expanded="false" style="width:33.3%;text-align:center;padding:10px 0 10px 0;cursor:pointer">
                <font size="4">Sobre Nosotros</font>
            </td>
        </tr>
    </tbody>
</table>
</div>
</body>
</html>

