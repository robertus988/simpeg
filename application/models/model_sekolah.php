<?php

class Model_sekolah extends CI_Model
{
    public function tambah_sekolah($data)
    {
        $this->db->insert('sekolah', $data);
    }

    public function tampil_by_id_pegawai($id)
    {
        return $this->db->get_where('sekolah', ['id_pegawai' => $id])->result();
    }
}
