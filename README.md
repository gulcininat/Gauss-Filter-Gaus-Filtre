# Gauss-Filter-Gaus-Filtre

Applying a Gauss filter on an image

// Bir görsel üzerinde Gauss filtre uygulaması

Matlab programında kayıtlı olan Cameraman.tif görüntüsü üzerinde medyan filtre uygulamasıdır. 
4. satırdaki kodda, sizin kendi bilgisayarınızda kayıtlı olan görüntünün adresini ve ismini kullanarak aynı uygulamayı yapabilirsiniz. Bunun için 3. satırı kapatıp, 4. satırı açmanız ve uzantıyı değiştirmeniz yeterli olacaktır.

      Gauss Filtre 
    
Yukarıda, gauss filtre uygulamasının matlab kodu verilmiştir. Kodda, öncelikle yüklenen resmin gri seviye görüntü değil ise, gri seviyeye dönüştürme işlemi yapılmıştır. Daha sonra 3x3 lük bir filtre gezdirilerek görüntüdeki her piksel değeri için ayrı ayrı, komşularının ve kendinin piksel değerleri ağırlıkları ile çarpılır daha sonra toplanır. Gauss filtre için 3x3lük maskede ağırlıkları [ 1 2 1 ; 2 4 2 ; 1 2 1] şeklindedir. Toplam sonuç 1/16 ile çarpılır. Gauss filtrede, en çok katkıyı kendisi yaparken, en az katkıyı ise çapraz komşuları yapmaktadır. Böylece her piksel değeri için yeni bir piksel değeri hesaplanmış olur. Gauss filtre, görüntüyü yumuşatmak veya gürültüleri gidermek için kullanılır. Keskin geçişleri azaltmaktadır. Kodda son olarak, görüntünün boyutunda azalma olduğundan dolayı ilk görüntünün, ilk ve son satırı ile ilk ve son sütunu da filtreden geçmiş görüntüye eklenir. Böylece boyut kaybı yaşanmamış olur.


Kodun çalıştırıldığında: Solda orijinal görüntü, sağda ise medyan filtre uygulanmış hali bulunmaktadır.
