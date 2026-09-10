.class Lcom/vkontakte/android/SelectGeoPointActivity$4$1;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

.field private final synthetic val$att:Lcom/vkontakte/android/GeoAttachment;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity$4;Lcom/vkontakte/android/GeoAttachment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    iput-object p2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$pdlg:Landroid/app/ProgressDialog;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 107
    .local v0, "geocoder":Landroid/location/Geocoder;
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v1, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v3, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v3, v3, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 108
    .local v8, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    .line 109
    .local v7, "addr":Landroid/location/Address;
    const-string v6, ""

    .line 115
    .local v6, "a":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v10, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    invoke-virtual {v7}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v7}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
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

    .line 130
    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_2
    const-string v1, ", "

    invoke-static {v1, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput-object v6, v1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "geocoder":Landroid/location/Geocoder;
    .end local v6    # "a":Ljava/lang/String;
    .end local v7    # "addr":Landroid/location/Address;
    .end local v8    # "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v10    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "point"

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v9}, Lcom/vkontakte/android/SelectGeoPointActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;->this$1:Lcom/vkontakte/android/SelectGeoPointActivity$4;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$4;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 141
    return-void

    .line 135
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .local v11, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
