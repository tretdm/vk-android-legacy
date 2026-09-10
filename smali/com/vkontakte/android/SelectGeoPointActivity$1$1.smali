.class Lcom/vkontakte/android/SelectGeoPointActivity$1$1;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SelectGeoPointActivity$1;

.field private final synthetic val$att:Lcom/vkontakte/android/GeoAttachment;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity$1;Lcom/vkontakte/android/GeoAttachment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$pdlg:Landroid/app/ProgressDialog;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 79
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$1;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$1;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$1;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 80
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v1, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v3, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v3, v3, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 81
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 82
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 83
    .local v6, "a":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v9

    .local v9, "i":I
    :goto_0
    if-gez v9, :cond_0

    .line 88
    const-string v1, "vk"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput-object v6, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 92
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v10, "intent":Landroid/content/Intent;
    const-string v1, "point"

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$1;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$1;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$1;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v10}, Lcom/vkontakte/android/SelectGeoPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$1;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$1;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$1;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 96
    return-void

    .line 84
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v0    # "geocoder":Landroid/location/Geocoder;
    .restart local v6    # "a":Ljava/lang/String;
    .restart local v7    # "addr":Landroid/location/Address;
    .restart local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v9    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v7, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v11

    .line 85
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

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, ", "
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 90
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v9    # "i":I
    .end local v11    # "line":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
