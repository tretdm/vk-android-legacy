.class Lcom/vkontakte/android/SelectGeoPointActivity$1;
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
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SelectGeoPointActivity$1;)Lcom/vkontakte/android/SelectGeoPointActivity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 69
    new-instance v0, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v0}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 70
    .local v0, "att":Lcom/vkontakte/android/GeoAttachment;
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$5(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$5(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 72
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Selected point = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$1;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 77
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity$1$1;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity$1;Lcom/vkontakte/android/GeoAttachment;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method
