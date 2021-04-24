<section class="content">
	<div class="container-fluid">
		<div class="card">
			<div class="card-body col-md-10">
				<form id=formnya action="" method="post" class="mt-5">
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
						<label for="hari">Hari</label>
						<select class="form-control" id="hari" name="hari">
							<option value="" disabled selected>--Pilih Hari--</option>
							<?php foreach ($hari as $har): ?>
							<option value="<?= $har ?>"><?= $har ?></option>
							<?php endforeach ?>
						</select>
						<small class="form-text text-danger"><?= form_error('hari') ?></small>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-group">
								<input id="jam_mulai" type="time" class="form-control" id="jam_mulai" name="jam_mulai1" style="display: inline-block; width: 100px;"> -
								<input id="jam_akhir" type="time" class="form-control" id="jam_akhir" name="jam_akhir1" style="display: inline-block; width: 100px;">
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<select id="mengajar" class="form-control" id="id_mengajar" name="id_mengajar1">
									<option value="" disabled selected>--Pilih Rombel - Mapel--</option>
									<?php foreach ($mengajar as $ngajar): ?>
									<option value="<?= $ngajar['id'] ?>"><?= $ngajar['roma'] ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<select id="ruangan" class="form-control" id="id_ruangan" name="id_ruangan1">
									<option value="" disabled selected>--Pilih Ruangan--</option>
									<?php foreach ($ruangan as $ruang): ?>
									<option value="<?= $ruang['id'] ?>"><?= $ruang['nama_ruangan'] ?></option>
									<?php endforeach ?>
								</select>
							</div>
						</div>
					</div>
					<input id="num" type="hidden" name="num" value="1">
					<span id="tambah" class="btn btn-secondary">+</span><br>
					<button type="submit" name="tambah" class="btn btn-primary float-right">Tambah</button>
				</form>
				<a href="<?= base_url('jadwal') ?>" type="button" class="btn btn-success float-right mr-3">Kembali</a>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	const span = document.querySelector('#tambah');
	let x = 2;
	span.addEventListener('click', function () {
		console.log("click")
		const form = document.querySelector('#formnya');
		const row = document.createElement('div');
		row.classList.add('row');
		const col = document.createElement('div');
		col.classList.add('col');
		const formGroup = document.createElement('div');
		formGroup.classList.add('form-group');
		const input = document.querySelector('#num');
		const jamMulai = document.querySelector('#jam_mulai');
		const jamAkhir = document.querySelector('#jam_akhir');
		const mengajar = document.querySelector('#mengajar');
		const ruangan = document.querySelector('#ruangan');
		const cloneJamMulai = jamMulai.cloneNode(true);
		const cloneJamAkhir = jamAkhir.cloneNode(true);
		const cloneMengajar = mengajar.cloneNode(true);
		const cloneRuangan = ruangan.cloneNode(true);

		cloneJamMulai.setAttribute('name', 'jam_mulai' + x);
		cloneJamAkhir.setAttribute('name', 'jam_akhir' + x);
		cloneMengajar.setAttribute('name', 'id_mengajar' + x);
		cloneRuangan.setAttribute('name', 'id_ruangan' + x);

		const cloneCol1 = col.cloneNode(true);
		const cloneFormGroup1 = formGroup.cloneNode(true);
		const cloneCol2 = col.cloneNode(true);
		const cloneFormGroup2 = formGroup.cloneNode(true);

		form.insertBefore(row, input);
		row.appendChild(col);
		col.appendChild(formGroup);
		formGroup.appendChild(cloneJamMulai);
		formGroup.appendChild(cloneJamAkhir);
		row.appendChild(cloneCol1);
		cloneCol1.appendChild(cloneFormGroup1);
		cloneFormGroup1.appendChild(cloneMengajar);
		row.appendChild(cloneCol2);
		cloneCol2.appendChild(cloneFormGroup2);
		cloneFormGroup2.appendChild(cloneRuangan);

		input.setAttribute('value', x);
		x++;
	});
</script>