<div class="row">
  <!-- Area Chart -->
  <div class="col-xl-12 col-lg-12">
      <div class="card shadow mb-4">
          <!-- Card Header - Dropdown -->
          <div
              class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
              <h6 class="m-0 font-weight-bold text-primary">Tabel Siswa</h6>
              <div class="dropdown no-arrow">
                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                      aria-labelledby="dropdownMenuLink">
                      <a class="dropdown-item" href="#">Action</a>
                  </div>
              </div>
          </div>
          <!-- Card Body -->
          <div class="card-body">
              <div class="chart-area">
                <div class="container">
                  <div class="row justify-content-center"><br><br>
                      <div class="col-12">
                            <a href="{{ url('siswa/create') }}" class="btn btn-primary mt-5">Tambah Siswa</a>
                          <br>
                          <br>
                          <table class="table table-hover">
                            <thead>
                              <tr>
                                  <th scope="col">ID</th>
                                  <th scope="col">Nama Lengkap</th>
                                  <th scope="col">Kelas</th>
                                  <th scope="col">Jurusan</th>
                              </tr>
                            </thead>
                            <tbody>
                                {% for datasiswa in data %}
                              <tr>
                                  <td>{{ datasiswa.id_siswa }}</td>
                                  <td>{{ datasiswa.nama_lengkap }}</td>
                                  <td>{{ datasiswa.kelas }}</td>
                                  <td>{{ datasiswa.jurusan }}</td>
                                <td>
                                    <a href="{{ url('siswa/edit/' ~ datasiswa.id_siswa) }}" class="btn btn-info btn-small">Edit</a>
                                    <a href="{{ url('siswa/delete/' ~ datasiswa.id_siswa) }}" class="btn btn-danger btn-small">Hapus</a>
                                </td>
                              </tr>
                              {% endfor %}
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
