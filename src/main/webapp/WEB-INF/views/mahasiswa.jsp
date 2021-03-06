<%
	request.setAttribute("contextName", request.getServletContext().getContextPath());
%>
<html>
<head>
<title>Mahasiswa</title>

</head>
<body class="" onload="loadData('/sia/mahasiswa/');loadJurusan($('#kdjur'));">
	
	<div class="wrapper row col-md-11" style="margin:auto;padding-top:3%">
		
		<div class="col-md-4 panel-primary bunder-kiri" style="color:white;padding-bottom:100px;background:rgba(0,0,0,0.4);padding-left:20px;padding-top:25px">
		<form method="POST" action="../mahasiswa/" enctype="application/json" id="form-mahasiswa">
			<div class="form-group">
			    <label for="nim">NIM:</label>
			    <input type="text" class="form-control" id="nim" name="nim" required>
			</div>
			<div class="form-group">
			    <label for="nama">Nama:</label>
			    <input type="text" class="form-control" id="nama" name="nama" required>
			</div>
			<div class="form-group">
			    <label for="kdjur">Kode Jurusan:</label>
			    <select class="form-control" id="kdjur" name="kdjur" required>
			    	<option value=''>-- Pilih Kode Jurusan --</option>
			    </select>
			</div>
			  <div class="form-group">
			    <label for="alamat">Alamat:</label>
			    <textarea class="form-control" id="alamat" name="alamat" required></textarea>
			  </div>
			  <div class="form-group">
			    <label for="tgl">Tanggal Lahir:</label>
			    <input type="date" class="form-control" id="tgl" name="tanggalLahir" required>
			  </div>
			  <button style="float:right;width:100%" type="button" onclick="simpanData('#form-mahasiswa','simpan','/sia/mahasiswa/');" class="btn btn-warning">Submit</button>
			</form>
		</div>
		<div id="s" style="color:white;" class="col-md-6 row">
			<div id="list" class="col-md-10" style="height:100%;max-height:600px;overflow-y:auto"></div>
			<div class="col-md-2">
				<input type="text" name="cari" placeholder="Cari apa om.." id="cari" onkeyup="cari(this.value,'/sia/mahasiswa/');">
			</div>
		</div>
	</div>
	
		
		<!-- Button to Open the Modal -->

<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Edit <span id=""></span></h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form method="POST" action="../mahasiswa/" enctype="application/json" id="form-update">
	<div class="wrapper">
		
		<div class="col-md-9 panel-primary" style="margin:auto;color:white;padding:19px;padding-bottom:100px;background:rgba(0,0,0,0.4);">
			<input type="hidden" id="id" name="id">
			<div class="form-group">
			    <label for="nim">NIM:</label>
			    <input type="text" class="form-control" id="nim" name="nim" required>
			</div>
			<div class="form-group">
			    <label for="nama">Nama:</label>
			    <input type="text" class="form-control" id="nama" name="nama" required>
			</div>
			<div class="form-group">
			    <label for="kdjur">Kode Jurusan:</label>
			    <select class="form-control" id="kdjur" name="kdjur" required>
			    	<option value=''>-- Pilih Kode Jurusan --</option>
			    </select>
			</div>
			  <div class="form-group">
			    <label for="alamat">Alamat:</label>
			    <textarea class="form-control" id="alamat" name="alamat" required></textarea>
			  </div>
			  <div class="form-group">
			    <label for="tgl">Tanggal Lahir:</label>
			    <input type="date" class="form-control" id="tgl" name="tanggalLahir" required>
			  </div>
			  <button style="float:right;width:100%" type="button" onclick="simpanData('#form-update','update','/sia/mahasiswa/');" class="btn btn-warning">Update</button>
		</div>
	</div>
	
		</form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
	<!--
		<table>
			<tr>
				<td>NIM</td>
				<td><div class="form-group"><input class="form-control" type="text" value="" id="nim"></div></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><div class="form-group"><input class="form-control" type="text" value="" id="nama"></div></td>
			</tr>
			<tr>
				<td>Tanggal Lahir</td>
				<td><div class="form-group"><input class="form-control" type="text" value="" id="tanggalLahir"></div></td>
			</tr>
		</table>
		-->
	
</body>
</html>