.class Lcom/vkontakte/android/ui/LocationAttachView$1;
.super Ljava/lang/Object;
.source "LocationAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/LocationAttachView;

.field private final synthetic val$ga:Lcom/vkontakte/android/GeoAttachment;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/LocationAttachView;Ljava/lang/String;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/LocationAttachView$1;)Lcom/vkontakte/android/ui/LocationAttachView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 77
    .local v9, "bmp":Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 99
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/LocationAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/ui/LocationAttachView$1$1;

    invoke-direct {v2, p0, v9}, Lcom/vkontakte/android/ui/LocationAttachView$1$1;-><init>(Lcom/vkontakte/android/ui/LocationAttachView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/LocationAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 85
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v1, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v3, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v3, v3, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 86
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 87
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 88
    .local v6, "a":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    .local v10, "i":I
    :goto_1
    if-gez v10, :cond_1

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    iput-object v6, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->this$0:Lcom/vkontakte/android/ui/LocationAttachView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/LocationAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/ui/LocationAttachView$1$2;

    iget-object v3, p0, Lcom/vkontakte/android/ui/LocationAttachView$1;->val$ga:Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView$1$2;-><init>(Lcom/vkontakte/android/ui/LocationAttachView$1;Lcom/vkontakte/android/GeoAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 97
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "i":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 89
    .restart local v0    # "geocoder":Landroid/location/Geocoder;
    .restart local v6    # "a":Ljava/lang/String;
    .restart local v7    # "addr":Landroid/location/Address;
    .restart local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v10    # "i":I
    :cond_1
    invoke-virtual {v7, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "line":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v10, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 91
    :cond_3
    const-string v1, ", "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
