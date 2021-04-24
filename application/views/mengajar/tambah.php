<section class="content">
	<div class="container-fluid">
		<div class="card">
			<div class="card-body col-md-6">
				<?php if ($this->session->flashdata('flash')): ?>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<?= $this->session->flashdata('flash'); ?>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<?php endif ?>
				<form action="" method="post" class="mt-5">
					<div class="form-group">
						<label for="id_thn_ajar">Tahun Ajar</label>
						<select class="form-control" id="id_thn_ajar" name="id_thn_ajar">
							<option value="" disabled selected>--Pilih Tahun Ajar--</option>
							<?php foreach ($thn_ajar as $thn): ?>
							<option value="<?= $thn['id'] ?>"><?= $thn['thn_ajar'] ?></option>
							<?php endforeach ?>
						</select>
						<small class="form-text text-danger"><?= form_error('id_thn_ajar') ?></small>
					</div>
					<div class="form-group">
						<label for="id_rombel">Rombel</label>
						<select class="form-control" id="id_rombel" name="id_rombel">
							<option value="" disabled selected>--Pilih Rombel--</option>
							<?php foreach ($rombel as $rom): ?>
							<option value="<?= $rom['id'] ?>"><?= $rom['nama_rombel'] ?></option>
							<?php endforeach ?>
						</select>
						<small class="form-text text-danger"><?= form_error('id_rombel') ?></small>
					</div>
					<div id= "div" class="form-group">
						<label for="id_mapel">Mata Pelajaran</label>
						<select id="select" class="form-control" id="id_mapel" name="id_mapel1">
							<option value="" disabled selected>--Pilih Mapel--</option>
							<?php foreach ($mapel as $map): ?>
							<option value="<?= $map['id'] ?>"><?= $map['nama_mapel'] ?></option>
							<?php endforeach ?>
						</select>
						<small class="form-text text-danger"><?= form_error('id_mapel') ?></small>
					</div>
					<input id="num" type="hidden" name="num" value="1">
					<span id="tambah" class="btn btn-secondary">+</span>
					<div class="form-group">
						<label for="id_guru">Guru</label>
						<select class="form-control" id="id_guru" name="id_guru">
							<option value="" disabled selected>--Pilih Guru--</option>
							<?php foreach ($guru as $gur): ?>
							<option value="<?= $gur['id'] ?>"><?= $gur['nama'] ?></option>
							<?php endforeach ?>
						</select>
						<small class="form-text text-danger"><?= form_error('id_guru') ?></small>
					</div>
					
					<button type="submit" name="tambah" class="btn btn-primary float-right">Tambah</button>
				</form>
				<a href="<?= base_url('mengajar') ?>" type="button" class="btn btn-success float-right mr-3">Kembali</a>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	const span = document.querySelector('#tambah');
	let x = 2;
	span.addEventListener('click', function () {
		const div = document.querySelector('#div');
		const small = document.querySelector('#small');
		const input = document.querySelector('#num');
		const select = document.querySelector('#select');
		const clone = select.cloneNode(true);
		clone.setAttribute('name', 'id_mapel' + x);

		div.insertBefore(clone, small);
		input.setAttribute('value', x);

		x++;
	});

</script>