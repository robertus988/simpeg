<div class="content-wrapper">
    <section class="content">

        <div class="row justify-content-md-center">
            <div class="col-md-10">

                <div class="accordion" id="bagian1">

                    <div class="card">
                        <h6 class="card-header" id="header1">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapse1">
                                <strong>DETAIL DATA PRIBADI DAN RIWAYAT KELUARGA</strong>
                            </button>
                        </h6>
                        <div id="collapse1" class="collapse show" aria-labelledby="header1" data-parent="#bagian1">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="data_diri-tab" data-toggle="tab" href="#data_diri" role="tab" aria-controls="data_diri" aria-selected="true">Data Diri</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="suami_istri-tab" data-toggle="tab" href="#suami_istri" role="tab" aria-controls="suami_istri" aria-selected="false">Suami/Istri</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="anak-tab" data-toggle="tab" href="#anak" role="tab" aria-controls="anak" aria-selected="false">Anak</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="orangtua-tab" data-toggle="tab" href="#orangtua" role="tab" aria-controls="orangtua" aria-selected="false">Orang Tua</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="data_diri" role="tabpanel" aria-labelledby="data_diri-tab">
                                    <div class="card-body">
                                        <div class="row justify-content-center">
                                            <div class="col-md-7">
                                                <table class="table table-borderless">
                                                    <tr>
                                                        <th class="text-right">NIP</th>
                                                        <td>: <?php echo $detail->nip ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Nama Pegawai</th>
                                                        <td>: <?php echo $detail->nm_pegawai ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Jenis Kelamin</th>
                                                        <td>: <?php echo $detail->jk ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Tempat, Tanggal Lahir</th>
                                                        <td>: <?php echo $detail->tpt_lhr ?>, <?php echo $detail->tgl_lhr ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Agama</th>
                                                        <td>: <?php echo $detail->agama ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Golongan Darah</th>
                                                        <td>: <?php echo $detail->gol_darah ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Status Pernikahan</th>
                                                        <td>: <?php echo $detail->stts_pnkh ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Status Kepegawaian</th>
                                                        <td>: <?php echo $detail->stts_kpgw ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Alamat</th>
                                                        <td>: <?php echo $detail->alamat ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Tanggal Masuk</th>
                                                        <td>: <?php echo $detail->tgl_msk ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Tanggal Kenaikan Pangkat</th>
                                                        <td>: <?php echo $detail->tgl_knk_pkt ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="text-right">Tanggal Kenaikan Gaji</th>
                                                        <td>: <?php echo $detail->tgl_knk_gj ?></td>
                                                    </tr>

                                                </table>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="card  text-center" style="width: 18rem;">
                                                    <div class="card-header text-center">
                                                        <h4><strong>PROFILE</strong></h4>
                                                    </div>
                                                    <img src="<?php echo base_url(); ?>upload/<?php echo $detail->foto; ?>" class="rounded mx-auto d-block mt-2" width="180" height="200" alt="...">
                                                    <div class="card-body">
                                                        <h5 class="card-title"><?php echo $detail->nm_pegawai ?></h5>
                                                        <h6 class="card-title"><?php echo $detail->nip ?></h6>
                                                    </div>
                                                    <ul class="list-group list-group-flush">
                                                        <li class="list-group-item">
                                                            <div class="row">
                                                                <div class="col-md-2 text-left"><i class="fas fa-sm fa-phone"></i></div>
                                                                <div class="col-md-10 text-right"><?php echo $detail->no_hp ?></div>
                                                            </div>
                                                        </li>
                                                        <li class="list-group-item">
                                                            <div class="row">
                                                                <div class="col-md-2 text-left"><i class="fas fa-sm fa-envelope"></i></div>
                                                                <div class="col-md-10 text-right"><?php echo $detail->email ?></div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="suami_istri" role="tabpanel" aria-labelledby="suami_istri-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>NIK</th>
                                                        <th>NAMA</th>
                                                        <th>TTL</th>
                                                        <th>PENDIDIKAN</th>
                                                        <th>PEKERJAAN</th>
                                                        <th>STATUS HUBUNGAN</th>
                                                        <th>AKSI</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($suami_istri as $si) : ?>
                                                        <tr>
                                                            <td><?php echo $si->nik ?></td>
                                                            <td><?php echo $si->nama ?></td>
                                                            <td><?php echo $si->tpt_lhr ?>, <?php echo $si->tgl_lhr ?></td>
                                                            <td><?php echo $si->pddk ?></td>
                                                            <td><?php echo $si->pkrj ?></td>
                                                            <td><?php echo $si->stts_hub ?></td>
                                                            <td style="width:150px;">

                                                                <?php echo anchor('admin/riwayat_keluarga/data_suami_istri/edit/' . $si->id_suami_istri, ' <button type="button" class="btn btn-sm btn-warning" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fas fa-edit"></i></button>') ?>

                                                                <?php echo anchor('admin/riwayat_keluarga/data_suami_istri/hapus/' . $si->id_suami_istri, '<button type="button" class="btn btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="Hapus"><i class="far fa-trash-alt"></i></button>') ?>

                                                            </td>
                                                            </td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="anak" role="tabpanel" aria-labelledby="anak-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>NIK</th>
                                                        <th>NAMA</th>
                                                        <th>TTL</th>
                                                        <th>JENIS KELAMIN</th>
                                                        <th>PENDIDIKAN</th>
                                                        <th>PEKERJAAN</th>
                                                        <th>STATUS HUBUNGAN</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($anak as $an) : ?>
                                                        <tr>
                                                            <td><?php echo $an->nik ?></td>
                                                            <td><?php echo $an->nama ?></td>
                                                            <td><?php echo $an->tpt_lhr ?>, <?php echo $an->tgl_lhr ?></td>
                                                            <td><?php echo $an->jk ?></td>
                                                            <td><?php echo $an->pddk ?></td>
                                                            <td><?php echo $an->pkrj ?></td>
                                                            <td><?php echo $an->stts_hub ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="orangtua" role="tabpanel" aria-labelledby="orangtua-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>NIK</th>
                                                        <th>NAMA</th>
                                                        <th>TTL</th>
                                                        <th>PENDIDIKAN</th>
                                                        <th>PEKERJAAN</th>
                                                        <th>STATUS HUBUNGAN</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($orangtua as $ot) : ?>
                                                        <tr>
                                                            <td><?php echo $ot->nik ?></td>
                                                            <td><?php echo $ot->nama ?></td>
                                                            <td><?php echo $ot->tpt_lhr ?>, <?php echo $ot->tgl_lhr ?></td>
                                                            <td><?php echo $ot->pddk ?></td>
                                                            <td><?php echo $ot->pkrj ?></td>
                                                            <td><?php echo $ot->stts_hub ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <h6 class="card-header" id="header2">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapse2">
                                <strong>DETAIL DATA RIWAYAT PENDIDIKAN</strong>
                            </button>
                        </h6>
                        <div id="collapse2" class="collapse show" aria-labelledby="header2" data-parent="#bagian1">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="sekolah-tab" data-toggle="tab" href="#sekolah" role="tab" aria-controls="sekolah" aria-selected="true">Sekolah</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="bahasa-tab" data-toggle="tab" href="#bahasa" role="tab" aria-controls="bahasa" aria-selected="false">Bahasa</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="sekolah" role="tabpanel" aria-labelledby="sekolah-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>TINGKAT</th>
                                                        <th>NAMA SEKOLAH/UNIV</th>
                                                        <th>LOKASI</th>
                                                        <th>JURUSAN</th>
                                                        <th>NO. IJAZAH</th>
                                                        <th>TANGGAL IJAZAH</th>
                                                        <th>NAMA KASEK/REKTOR</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($sekolah as $skl) : ?>
                                                        <tr>
                                                            <td><?php echo $skl->tingkat ?></td>
                                                            <td><?php echo $skl->nm_skl_uv ?></td>
                                                            <td><?php echo $skl->lokasi ?></td>
                                                            <td><?php echo $skl->jurusan ?></td>
                                                            <td><?php echo $skl->no_ijz ?></td>
                                                            <td><?php echo $skl->tgl_ijz ?></td>
                                                            <td><?php echo $skl->nm_ks_rk ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="bahasa" role="tabpanel" aria-labelledby="bahasa-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>BAHASA</th>
                                                        <th>KEMAMPUAN BICARA</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($bahasa as $b) : ?>
                                                        <tr>
                                                            <td><?php echo $b->bahasa ?></td>
                                                            <td><?php echo $b->kmp_bcr ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <h6 class="card-header" id="header3">
                            <button class="btn btn-link" data-toggle="collapse" data-target="#collapse3">
                                <strong>DETAIL DATA KEPEGAWAIAN</strong>
                            </button>
                        </h6>
                        <div id="collapse3" class="collapse show" aria-labelledby="header3" data-parent="#bagian1">
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-jabatan-tab" data-toggle="tab" href="#nav-jabatan" role="tab" aria-controls="nav-jabatan" aria-selected="true">Jabatan</a>
                                    <a class="nav-item nav-link" id="nav-pangkat-tab" data-toggle="tab" href="#nav-pangkat" role="tab" aria-controls="nav-pangkat" aria-selected="false">Pangkat</a>
                                    <a class="nav-item nav-link" id="nav-mutasi-tab" data-toggle="tab" href="#nav-mutasi" role="tab" aria-controls="nav-mutasi" aria-selected="false">Mutasi</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-jabatan" role="tabpanel" aria-labelledby="nav-jabatan-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>ID ESELON</th>
                                                        <th>ID JABATAN</th>
                                                        <th>JENIS JABATAN</th>
                                                        <th>NO. SK</th>
                                                        <th>TANGGAL SK</th>
                                                        <th>AWAL MASA JBT</th>
                                                        <th>AKHIR MASA JBT</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($jabatan as $jbt) : ?>
                                                        <tr>
                                                            <td><?php echo $jbt->id_master_eselon ?></td>
                                                            <td><?php echo $jbt->id_master_jabatan ?></td>
                                                            <td><?php echo $jbt->jenis_jbt ?></td>
                                                            <td><?php echo $jbt->no_sk_jbt ?></td>
                                                            <td><?php echo $jbt->tgl_sk_jbt ?></td>
                                                            <td><?php echo $jbt->awal_masa_jbt ?></td>
                                                            <td><?php echo $jbt->akhir_masa_jbt ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-pangkat" role="tabpanel" aria-labelledby="nav-pangkat-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>ID GOLONGAN</th>
                                                        <th>PANGKAT</th>
                                                        <th>TMT PANGKAT</th>
                                                        <th>PEJABAT PENGESAH SK</th>
                                                        <th>NO. SK</th>
                                                        <th>TANGGAL SK</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($pangkat as $pkt) : ?>
                                                        <tr>
                                                            <td><?php echo $pkt->id_master_golongan ?></td>
                                                            <td><?php echo $pkt->pangkat ?></td>
                                                            <td><?php echo $pkt->tmt_pkt ?></td>
                                                            <td><?php echo $pkt->pjb_pgs_pkt ?></td>
                                                            <td><?php echo $pkt->no_sk_pkt ?></td>
                                                            <td><?php echo $pkt->tgl_sk_pkt ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-mutasi" role="tabpanel" aria-labelledby="nav-mutasi-tab">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>JENIS MUTASI</th>
                                                        <th>NO. SK</th>
                                                        <th>TANGGAL MUTASI</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <?php foreach ($mutasi as $mts) : ?>
                                                        <tr>
                                                            <td><?php echo $mts->jenis_mutasi ?></td>
                                                            <td><?php echo $mts->no_sk_mts ?></td>
                                                            <td><?php echo $mts->tgl_mts ?></td>
                                                        </tr>
                                                    <?php endforeach; ?>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <br>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <a href="<?php echo base_url('admin/data_pegawai/'); ?>" class="btn btn-sm btn-danger"><i class=" fas fa-arrow-left"></i> Kembali</a>
            </div>
        </div>

    </section>
</div>

</div>