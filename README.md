
<div align="center">

![image](https://github.com/kevinsoewari/IBL-Scraping/assets/165129110/76b8c505-ffb7-4bc9-b551-2d295f28cc20)



# Indonesian Basketball League Scraping

<p align="center">
    
# 🏀: Menu

</p>

[Introduction](#game-Introduction)
•
[Deskripsi Project](#writing_hand-Deskripsi-Project)
•
[Dokumen](#books-dokumen)
•
[Visualisasi Data Scraping](#visualisasi-data-scraping)
•
[PPT](#computer-PPT)
•
[Pengembang](#man-Developer)

</div>

## 🎮 Introduction

**Sekilas Tentang IBL**

<p align="justify">
IBL adalah singkatan dari "Indonesia Basketball League," yang merupakan liga bola basket profesional di Indonesia. Liga ini dikelola oleh Perbasi (Persatuan Bola Basket Seluruh Indonesia) dan bertujuan untuk mempromosikan dan mengembangkan olahraga bola basket di Indonesia.
</p>


## 📑 Deskripsi Project

<div align="center">
    
 ![image](https://github.com/kevinsoewari/IBL-Scraping/assets/165129110/17cc04f3-b00f-4956-96d3-dfd00b117f1a)

</p>

<p align="justify">
Pada proyek kali ini, yaitu melakukan scraping pada situs web https://iblindonesia.com/. Situs web ini dikenal dengan nama "IBL Indonesia." Ini adalah platform yang menyediakan informasi dan berita terbaru tentang liga bola basket profesional di Indonesia. IBL Indonesia dikenal karena memberikan informasi terperinci tentang pertandingan, pemain, tim, dan peringkat dalam liga.
</p>

<p align="justify">
IBL Indonesia dianggap sebagai sumber tepercaya untuk evaluasi kualitas dan perkembangan dalam industri bola basket Indonesia, dan digunakan oleh penggemar serta profesional industri untuk membuat keputusan yang lebih baik terkait pertandingan, pemain, dan tim bola basket.
</p>

</div>

<p align="justify">
Dalam hal ini, data yang akan dilakukan scraping berkaitan dengan :
 </p>

 <p align="justify">
      
+ **Point Pemain** beberapa pemain yang mencetak point dari setiap team
+ **Assist Pemain** Rangkuman pemain yang mencetak assist dalam setiap pertandingan
+ **Rebound Pemain** Rangkuman banyak rebound yang dicetak oleh pemain 
</p>


## :books: Dokumen
Berikut adalah salah satu contoh dokumen di MongoDB untuk pemain IBL :
```mongodb
{
    "_id":{"$oid":"6663b9cb016e23532e016261"},
    "nama_pemain":"Lester Prosper",
    "point_pemain":"325",
    "assist_pemain":"30",
    "rebound_pemain":"189"
}
```

## :computer: PPT
Berikut adalah link powerpoint yang memuat projek ini :

## :panda_face: Pengembang
+ [Kevin_Alifviansyah](https://github.com/kevinsoewari/) (G1501231018)
