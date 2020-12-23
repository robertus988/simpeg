<div class="container-fluid">

    <div class="card">
        <h6 class="card-header"><strong>DATA JABATAN</strong></h6>
        <div class="card-body">
            <form action="<?php echo base_url() ?>admin/kepegawaian/jabatan/tambah" method="post">

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="pegawai">Pegawai</label>
                        </div>
                        <div class="col-md-7">

                            <select name="id_pegawai" class="custom-select">
                                <option selected>Pilih Pegawai</option>
                                <?php foreach ($pegawai as $pgw) : ?>
                                    <option value="<?php echo $pgw->id_pegawai ?>"><?php echo $pgw->nip ?> - <?php echo $pgw->nm_pegawai ?></option>
                                <?php endforeach; ?>
                            </select>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="id_master_eselon">Eselon</label>
                        </div>
                        <div class="col-md-7">
                            <select name="id_master_eselon" class="custom-select">
                                <option selected>Pilih Eselon</option>
                                <?php foreach ($master_eselon as $me) : ?>
                                    <option value="<?php echo $me->id_master_eselon ?>"><?php echo $me->eselon ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="is_master_jabatan">Jabatan</label>
                        </div>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-9">
                                    <select name="id_master_jabatan" class="custom-select">
                                        <option selected>Pilih Jabatan</option>
                                        <?php foreach ($master_jabatan as $mj) : ?>
                                            <option value="<?php echo $mj->id_master_jabatan ?>"><?php echo $mj->nm_jabatan ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                                <div class="col-md-3 text-right">
                                    <a href="<?php echo base_url('admin/kepegawaian/master_jabatan'); ?>" class="btn btn-sm btn-primary" style="width:110px;"><i class="fas fa-sm fa-plus"></i> Add Jabatan</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="jenis_jbt">Jenis Jabatan</label>
                        </div>
                        <div class="col-md-7">
                            <select name="jenis_jbt" class="custom-select">
                                <option selected>Pilih Jenis Jabatan</option>
                                <option>Jabatan Administrasi</option>
                                <option>Jabatan Pelaksana</option>
                                <option>Jabatan Struktural</option>
                                <option>Jabatan Fungsional</option>
                                <option>Jabatan Pimpinan Tinggi</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="no_sk_jbt">No dan Tanggal SK</label>
                        </div>
                        <div class="col-md-7">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <input type="text" name="no_sk_jbt" id="no_sk_jbt" class="form-control" placeholder="Masukkan No. SK">
                                </div>
                                <div class="col-md-6 input-group">
                                    <input type="date" name="tgl_sk_jbt" id="tgl_sk_jbt" class="form-control">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fas fa-calendar-alt"></i></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row justify-content-md-center">
                        <div class="col-md-2 text-right mt-2">
                            <label for="">Masa Jabatan</label>
                        </div>
                        <div class="col-md-7">
                            <div class="form-row">
                                <div class="col-md-5 input-group">
                                    <input type="date" name="awal_masa_jbt" id="awal_masa_jbt" class="form-control">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fas fa-calendar-alt"></i></div>
                                    </div>
                                </div>
                                <div class="col-md-2 text-center">
                                    <strong>-</strong>
                                </div>
                                <div class="col-md-5 input-group">
                                    <input type="date" name="akhir_masa_jbt" id="akhir_masa_jbt" class="form-control">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fas fa-calendar-alt"></i></div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>


        </div>
        <div class="card-footer text-center">
            <a href="<?php echo base_url('admin/dashboard'); ?>" class="btn btn-danger btn-sm"><i class=" fas fa-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i> Simpan</button>
        </div>

        </form>
        <!-- <?php form_close(); ?> -->
    </div>

</div>

</div>
<!-- End of Main Content -->