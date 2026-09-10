.class Lcom/vkontakte/android/NewPostActivity$12$1;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity$12;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewPostActivity$12;

.field private final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity$12;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->this$1:Lcom/vkontakte/android/NewPostActivity$12;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->val$location:Landroid/location/Location;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewPostActivity$12$1;)Lcom/vkontakte/android/NewPostActivity$12;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->this$1:Lcom/vkontakte/android/NewPostActivity$12;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 376
    new-instance v9, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v9}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 377
    .local v9, "att":Lcom/vkontakte/android/GeoAttachment;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->val$location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v9, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 378
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->val$location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v9, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 380
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->this$1:Lcom/vkontakte/android/NewPostActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity$12;->access$0(Lcom/vkontakte/android/NewPostActivity$12;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 381
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-wide v1, v9, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v3, v9, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 382
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 383
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 384
    .local v6, "a":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    .local v10, "i":I
    :goto_0
    if-gez v10, :cond_0

    .line 389
    iput-object v6, v9, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->this$1:Lcom/vkontakte/android/NewPostActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity$12;->access$0(Lcom/vkontakte/android/NewPostActivity$12;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/vkontakte/android/NewPostActivity;->access$6(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/GeoAttachment;)V

    .line 392
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1;->this$1:Lcom/vkontakte/android/NewPostActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity$12;->access$0(Lcom/vkontakte/android/NewPostActivity$12;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewPostActivity$12$1$1;

    invoke-direct {v2, p0, v9}, Lcom/vkontakte/android/NewPostActivity$12$1$1;-><init>(Lcom/vkontakte/android/NewPostActivity$12$1;Lcom/vkontakte/android/GeoAttachment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void

    .line 385
    .restart local v0    # "geocoder":Landroid/location/Geocoder;
    .restart local v6    # "a":Ljava/lang/String;
    .restart local v7    # "addr":Landroid/location/Address;
    .restart local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v10    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v7, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, "line":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v10, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    :cond_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 387
    :cond_2
    const-string v1, ", "
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 390
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "i":I
    .end local v11    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
