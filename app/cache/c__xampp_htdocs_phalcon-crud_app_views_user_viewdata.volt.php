<?php $v28354119561iterated = false; ?><?php $v28354119561iterator = $data; $v28354119561incr = 0; $v28354119561loop = new stdClass(); $v28354119561loop->self = &$v28354119561loop; $v28354119561loop->length = count($v28354119561iterator); $v28354119561loop->index = 1; $v28354119561loop->index0 = 1; $v28354119561loop->revindex = $v28354119561loop->length; $v28354119561loop->revindex0 = $v28354119561loop->length - 1; ?><?php foreach ($v28354119561iterator as $datas) { ?><?php $v28354119561loop->first = ($v28354119561incr == 0); $v28354119561loop->index = $v28354119561incr + 1; $v28354119561loop->index0 = $v28354119561incr; $v28354119561loop->revindex = $v28354119561loop->length - $v28354119561incr; $v28354119561loop->revindex0 = $v28354119561loop->length - ($v28354119561incr + 1); $v28354119561loop->last = ($v28354119561incr == ($v28354119561loop->length - 1)); ?><?php $v28354119561iterated = true; ?>
<?php if ($v28354119561loop->first) { ?>
<table border=1 align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th colspan=2>Action</th>
        </tr>
    </thead>
<?php } ?>
    <tbody>
        <tr>
            <td><?= $datas->id_user ?></td>
            <td><?= $datas->nama_user ?></td>
            <td><?= $datas->email_user ?></td>
            <td> <a href="<?= $this->url->get('user/edit/' . $datas->id_user) ?>">Edit</a> </td>
            <td> <a href="<?= $this->url->get('user/hapus/' . $datas->id_user) ?>">Hapus</a> </td>
        </tr>
    </tbody>
<?php if ($v28354119561loop->last) { ?>
    </table>
<?php } ?>
<?php $v28354119561incr++; } if (!$v28354119561iterated) { ?>
    No data
<?php } ?>