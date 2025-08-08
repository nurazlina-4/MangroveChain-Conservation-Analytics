# Kelompok 1
Kelompok 1:
- almar reza maulana
- farhansyah
- nasri angga ari pratama
- alif nur rahman
- nurazlina
- azmi saputra
- dwi asti wulanjani
- m safi'i
- Elisa dwi andini
- arif dwisantoso
- jurana wati
- titik puji lestari
- t nurasyiah
- dicky asrul saputra
- jumelda
- rezki alfian
- agung pratama
- eka lestari
- aminnur rachmat
- riyanti
- ayunda laila hapsari
- ayu putriani
- fitri ramadani
- rahman

# BAB I. PENDAHULUAN
## 1.1 Latar Belakang Masalah

Indonesia sebagai pemilik 23% mangrove global (3.7 juta hektar) menghadapi degradasi 40% sejak 1980 akibat alih fungsi lahan dan lemahnya sistem pemantauan. 
MangroveChain hadir sebagai solusi blockchain yang mengintegrasikan 14 dimensi data dari 30 proyek konservasi di seluruh Indonesia untuk menjawab tiga masalah kritis:
1. Variasi hasil konservasi (contoh: kerapatan pohon 40% lebih tinggi di proyek berizin di Kalimantan Timur).
2. Ketidaksesuaian antara status izin dan hasil ekologis (contoh: kualitas air buruk di Jawa meskipun izin disetujui).
3. Ketidakpastian kepemilikan lahan dan batas hukum yang mempengaruhi efektivitas konservasi.

## 1.2 Identifikasi Masalah
Berdasarkan hasil analisis dan referensi ilmiah dalam tutorial konservasi mangrove serta data lapangan, proyek ini mengidentifikasi permasalahan utama sebagai berikut:
1. Kerusakan Hutan Mangrove yang terus berlangsung akibat konversi lahan dan deforestasi tanpa legalitas yang jelas.
2. Kurangnya transparansi dan akuntabilitas dalam proses konservasi dan perdagangan kredit karbon.
3. Minimnya integrasi teknologi dalam pemantauan dan pelaporan konservasi berbasis data.
4. Ketimpangan distribusi manfaat dari proyek konservasi terhadap komunitas lokal.
5. Tantangan verifikasi dan regulasi dalam skema perdagangan karbon berbasis mangrove.
6. Kebutuhan sistem berbasis data yang komprehensif dan kredibel untuk mendukung keputusan kebijakan konservasi.

## 1.3 Rumusan Masalah
Berdasarkan latar belakang dan identifikasi di atas, rumusan masalah yang menjadi fokus kajian dan pengembangan sistem MangroveChain adalah:
1. Bagaimana membangun sistem berbasis blockchain yang dapat menjamin integritas dan transparansi dalam pengelolaan proyek konservasi mangrove?
2. Bagaimana platform ini dapat mengukur efektivitas konservasi berdasarkan indikator ekologis, legalitas, partisipasi masyarakat, dan dampak ekonomi?
3. Bagaimana sistem dapat mendukung proses validasi kredit karbon dan memastikan distribusi manfaat yang adil dan terverifikasi?
4. Bagaimana teknologi analitik data dapat digunakan untuk memberikan wawasan strategis kepada pemangku kepentingan dari 30 proyek konservasi?

# PEMBAHASAN TOPIC PERMASALAHAN

## Studi Kasus 1 : Analisis Efektivitas Regulasi & Dampak Biodiversitas

### Latar Belakang Masalah
Tim konservasi menemukan variasi signifikan dalam hasil monitoring biodiversitas di berbagai proyek. Di Kalimantan Timur, proyek dengan izin disetujui menunjukkan kerapatan pohon 40% lebih tinggi dibandingkan proyek dengan status pending, sementara di Jawa, kualitas air tetap buruk meskipun izin sudah disetujui. Analisis ini bertujuan mengungkap pola sistemik bagaimana kerangka regulasi dan struktur kepemilikan lahan mempengaruhi hasil konservasi.

### Pertanyaan Kunci
- Apakah status persetujuan izin berkorelasi dengan peningkatan biodiversitas yang terukur (kualitas air, kerapatan pohon)?
- Bagaimana pengaturan kepemilikan lahan yang berbeda (negara, swasta, masyarakat) mempengaruhi keanekaragaman spesies?
- Apakah proyek dengan batas lahan yang terdefinisi secara hukum mencapai hasil ekologis yang lebih baik?

### Metodologi
Untuk menyelesaikan kedua kasus pada latar belakang maka dilakukan pengolahan data dan analisis. 
Data diambil dari ledger blockchain MangroveChain yang mencakup:
1. Regulasi: Status izin (Disetujui, Pending, Tolak) dari 010Regulatory_Permits.
2. Kepemilikan Lahan: Kategori (Negara, Swasta, Masyarakat) dan status batas hukum (Terdefinisi, Tidak Jelas) dari 011Land_Tenure_Records.
3. Biodiversitas: Metrik kerapatan pohon, kualitas air, dan jumlah spesies dari 012Biodiversity_Monitoring.
Teknik Analisis:
1. SQL CUBE Analysis (contoh query terlampir di GitHub) untuk eksplorasi multidimensi.
[Klik Disini Untuk Melihat Contoh Query](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/contoh_query/query_SQL.sql)
2. Prediksi Dampak berbasis machine learning (model regresi) untuk proyeksi keberlanjutan.
3. Heatmap Korelasi (contoh kode skrip terlampir di GitHub) untuk melihat hubungan antara faktor regulasi dan metrik biodiversitas.
[Klik Disini Untuk Melihat Contoh Kode Skrip](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/contoh_query/skripkode_studikasus1.ipynb)

### Hasil & Temuan Kunci
1. Status Izin vs. Biodiversitas

Output File:

![Status Izin](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/Status_Izin.PNG)

3. Kepemilikan Lahan & Keanekaragaman Spesies

Output File:
![image_1](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/output_1-12.PNG)
![image_2](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/output_13-30.PNG)

5. Batas Lahan Terdefinisi Hukum

Output File:
![image_1](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/output_1-12.PNG)
![image_2](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/output_13-30.PNG)

### Visualisasi Data 
 Heatmap Korelasi
 ![correlation](https://github.com/nurazlina-4/MangroveChain-Conservation-Analytics/blob/main/images/output_correlation.png)

### Rekomendasi untuk Stakeholder
1. Untuk Pemerintah & Regulator
Landasan untuk evaluasi kebijakan berbasis data
Identifikasi wilayah dengan potensi risiko ekologis tinggi
Penguatan kontrol atas izin proyek konservasi
2. Untuk Investor & Donor
Informasi kuantitatif mengenai efisiensi karbon per investasi
Verifikasi transparansi data dan keterlibatan komunitas
Seleksi proyek berdasarkan dampak dan kredibilitas
3. Untuk Komunitas & NGO
Penguatan argumentasi advokasi berbasis data terbuka
Peta keterlibatan masyarakat dalam proyek konservasi

### Kesimpulan
Integrasi blockchain (MangroveChain) dengan analisis data multidimensi membuktikan:
1. Regulasi yang transparan (via ledger) meningkatkan efektivitas konservasi.
2. Kepemilikan lahan masyarakat adalah model terbaik untuk biodiversitas.
3. Batas hukum yang jelas mengurangi risiko dan meningkatkan dampak ekologis.
