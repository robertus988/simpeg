<?php

class Profil_pegawai extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('level') != 'Pegawai') {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login !
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
            redirect('auth/login');
        }
    }

    public function detail($id)
    {
        $data = [
            'title' => 'Halaman Detail Pegawai',
            'detail' => $this->model_pegawai->tampil_by_id($id),
            'user' => $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array(),
            'id_pegawai' => $this->db->get_where('user', ['id_pegawai' => $this->session->userdata('id_pegawai')])->row_array(),
            'suami_istri' => $this->model_suami_istri->tampil_by_id_pegawai($id),
            'anak' => $this->model_anak->tampil_by_id_pegawai($id),
            'orangtua' => $this->model_orangtua->tampil_by_id_pegawai($id),
            'bahasa' => $this->model_bahasa->tampil_by_id_pegawai($id),
            'sekolah' => $this->model_sekolah->tampil_by_id_pegawai($id),
            'jabatan' => $this->model_jabatan->tampil_by_id_pegawai($id),
            'pangkat' => $this->model_pangkat->tampil_by_id_pegawai($id),
            'mutasi' => $this->model_mutasi->tampil_by_id_pegawai($id)
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar-pegawai', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('pegawai/profil_pegawai', $data);
        $this->load->view('templates/footer');
        $this->load->view('templates/javascript');
    }
}
