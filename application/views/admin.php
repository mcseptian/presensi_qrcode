<?php include "include/head.php"; ?>
<div class="container" style="height: 640px; width: auto; overflow: auto;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2 style="text-align: center;"> Member </h2>
        </div>
        <div class="panel-body">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>id</th>
                    <th>NIM</th>
                    <th>nama</th>
                    <th>tahun_angkatan</th>
                    <th>fakultas</th>
                    <th>prodi</th>
                    <th>gender</th>
                    <th>no_telp</th>
                    <th>status</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $query = $this->db->query('SELECT * FROM tbl_anggota ORDER BY id ASC');

                foreach ($query->result() as $row) {
                    ?>
                <tr>
                    <td><?php echo $row->id; ?></td>
                    <td><?php echo $row->NIM; ?></td>
                    <td><?php echo $row->nama; ?></td>
                    <td><?php echo $row->tahun_angkatan; ?></td>
                    <td><?php echo $row->fakultas; ?></td>
                    <td><?php echo $row->prodi; ?></td>
                    <td><?php echo $row->gender; ?></td>
                    <td><?php echo $row->no_telp; ?></td>
                    <td><?php echo ($row->status == '1')?'Active':'Inactive'; ?></td>
                </tr>
                <?php 
                } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php include "include/foot.php"; ?>