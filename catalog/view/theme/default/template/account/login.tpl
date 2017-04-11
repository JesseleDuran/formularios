<!DOCTYPE html>

<html >
<head>
  <meta charset="UTF-8">
  <title>Iniciar Sesión</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link rel="stylesheet" href="catalog/view/theme/default/stylesheet/styleH.css">
  <script src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
</head>
<body>
  
<div id="formWrapper">
  <center><img src="image/logo-home.png" alt="logo" align="middle"></center>
  <div id="formLog">
    <div class="verticalLine">
      <h2>Iniciar Sesión</h2>
    </div>
    <br>
  <div class="logo">
  <div class="container">

  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
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
      <div class="row">        
        <div class="col-sm-6">
          <div class="well">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              
              <div class="form-item">
                <div class="form-group">
                  <label class="formLabel">Correo Electrónico</label>
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control form-style"/>
                </div>
              </div>
              <br>

              <div class="form-group">
                <div class="form-item">
                  <label class="formLabel">Contraseña</label>
                  <input type="password" name="password" value="<?php echo $password; ?>" id="input-password" class="form-control form-style"/>                
                </div>
                <div class="pull-right">
                  <a href="<?php echo $forgotten; ?>">
                  <small>¿Olvidaste tu contraseña?</small>
                  </a>
                  </div>
              </div>
              <br>
              <br>        
              <div class="form-item">
              <input type="submit" value="Iniciar Sesión" class="register btn btn-primary" />
              <?php if ($redirect) { ?>

              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
              </div>
              <div class="clear-fix"></div>
              <br>

            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
</div>
</div>
</div>
  <div class="col-sm-6">
    <div id="formBottom">
        <div style="text-align: center">¿Aún no tienes cuenta?</div>
          <br>
          <div class="form-item-down">
            <a href="<?php echo $register; ?>">
            <input type="submit" class="blue pull-right" value="Crear una Cuenta">
            </a>
            <div class="clear-fix"></div>
          </div>
          <br> 
    </div>
  </div>
</div>
</div>

<div style='position:fixed; bottom:0px; width: 100%'>
<table style="width:100%; border:.3px;" border="1" bgcolor="white" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
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



