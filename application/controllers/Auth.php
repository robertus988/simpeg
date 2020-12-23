<?php

class Auth extends CI_Controller
{
    public function login()
    {
        $data['title'] = 'Halaman Login';

        $this->form_validation->set_rules('username', 'Username', 'required', [
            'required' => 'Username wajib diisi'
        ]);
        $this->form_validation->set_rules('password', 'Password', 'required', [
            'required' => 'Password wajib diisi'
        ]);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/header', $data);
            $this->load->view('auth/form_login');
            $this->load->view('templates/javascript');
        } else {
            $auth = $this->model_auth->cek_login();
            if ($auth == FALSE) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                Username atau Password Anda Salah
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>');
                redirect('auth/login');
            } else {
                $this->session->set_userdata('username', $auth->username);
                $this->session->set_userdata('level', $auth->level);
                switch ($auth->level) {
                    case 'Administrator':
                        redirect('admin/dashboard');
                        break;
                    case 'Pegawai':
                        redirect('pegawai/beranda');
                        break;
                    default:
                        break;
                }
            }
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('level');

        $this->session->set_flashdata('pesan', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Anda Berhasil Logout !
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
        redirect('auth/login');
    }
}
