.class Lcom/vkontakte/android/CheckInActivity$9;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CheckInActivity$9;)Lcom/vkontakte/android/CheckInActivity;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 357
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CheckInActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 359
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 360
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 361
    .local v6, "a":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v9, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    invoke-virtual {v7}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {v7}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_2
    const-string v1, ", "

    invoke-static {v1, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 379
    if-eqz v6, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$18(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    iput-object v6, v1, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$9(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    iput-object v6, v1, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$9;->this$0:Lcom/vkontakte/android/CheckInActivity;

    new-instance v2, Lcom/vkontakte/android/CheckInActivity$9$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CheckInActivity$9$1;-><init>(Lcom/vkontakte/android/CheckInActivity$9;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v10

    .local v10, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
