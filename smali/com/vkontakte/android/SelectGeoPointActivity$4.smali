.class Lcom/vkontakte/android/SelectGeoPointActivity$4;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SelectGeoPointActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SelectGeoPointActivity$4;)Lcom/vkontakte/android/SelectGeoPointActivity;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v7, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v7}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 96
    .local v7, "att":Lcom/vkontakte/android/GeoAttachment;
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_place"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v8, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 101
    .local v8, "pdlg":Landroid/app/ProgressDialog;
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v8, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;

    invoke-direct {v1, p0, v7, v8}, Lcom/vkontakte/android/SelectGeoPointActivity$4$1;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity$4;Lcom/vkontakte/android/GeoAttachment;Landroid/app/ProgressDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    .end local v8    # "pdlg":Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/PlacesAdd;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$1(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$2(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v5, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/PlacesAdd;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 144
    new-instance v1, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/SelectGeoPointActivity$4$2;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity$4;Lcom/vkontakte/android/GeoAttachment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PlacesAdd;->setCallback(Lcom/vkontakte/android/api/PlacesAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$4;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
