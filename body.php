<div class="main main-raised">
        <div class="container mainn-raised" style="width:100%;">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/banner22.jpg" alt="Samosir" style="width:100%; height: 450px;">
                    </div>
                    <div class="item">
                        <img src="img/banner12.jpg" style="width:100%; height: 450px;">
                    </div>
                </div>
                <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Kembali</span>
                </a>
                <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Lanjut</span>
                </a>
            </div>
        </div>

        <div class="section mainn mainn-raised">
            <div class="container">
                <div class="section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title">
                                    <h3 class="title">Populer</h3>
                                </div>
                            </div>
                            <div class="col-md-12 mainn mainn-raised">
                                <div class="row">
                                    <div class="products-tabs">
                                        <div id="tab1" class="tab-pane active">
                                            <div class="products-slick" data-nav="#slick-nav-1">
                                                <?php
                                                    include 'db.php';
                                                    $product_query = "SELECT * FROM products, categories WHERE product_cat = cat_id AND product_id BETWEEN 5 AND 10";
                                                    $run_query = mysqli_query($con, $product_query);

                                                    if (mysqli_num_rows($run_query) > 0) {
                                                        while ($row = mysqli_fetch_array($run_query)) {
                                                            $pro_id    = $row['product_id'];
                                                            $pro_cat   = $row['product_cat'];
                                                            $pro_brand = $row['product_brand'];
                                                            $pro_title = $row['product_title'];
                                                            $pro_price = $row['product_price'];
                                                            $pro_image = $row['product_image'];
                                                            $cat_name = $row['cat_title'];

                                                            echo "
                                                                <div class='product'>
                                                                    <a href='product.php?p=$pro_id'>
                                                                        <div class='product-img'>
                                                                            <img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
                                                                        </div>
                                                                    </a>
                                                                    <div class='product-body'>
                                                                        <p class='product-category'>$cat_name</p>
                                                                        <h3 class='product-name header-cart-item-name'>
                                                                            <a href='product.php?p=$pro_id'>$pro_title</a>
                                                                        </h3>
                                                                        <h4 class='product-price header-cart-item-info'>
                                                                            Rp $pro_price<del class='product-old-price'></del>
                                                                        </h4>
                                                                    </div>
                                                                </div>
                                                            ";
                                                        }
                                                    }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>