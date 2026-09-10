.class Lcom/vkontakte/android/PhotoViewerFragment$21;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->loadPhotoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerFragment$21;)Lcom/vkontakte/android/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 729
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 730
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget-wide v1, v1, Lcom/vkontakte/android/Photo;->lat:D

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v3

    iget-wide v3, v3, Lcom/vkontakte/android/Photo;->lon:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 731
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 732
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 733
    .local v6, "a":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v9

    .local v9, "i":I
    :goto_0
    if-gez v9, :cond_0

    .line 738
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iput-object v6, v1, Lcom/vkontakte/android/Photo;->placeAddress:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment$21;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PhotoViewerFragment$21$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerFragment$21$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment$21;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 743
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    :goto_1
    return-void

    .line 734
    .restart local v0    # "geocoder":Landroid/location/Geocoder;
    .restart local v6    # "a":Ljava/lang/String;
    .restart local v7    # "addr":Landroid/location/Address;
    .restart local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9    # "i":I
    :cond_0
    invoke-virtual {v7, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v10

    .line 735
    .local v10, "line":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 733
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 736
    :cond_2
    const-string v1, ", "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 742
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
