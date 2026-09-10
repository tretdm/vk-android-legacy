.class Lcom/vkontakte/android/SelectGeoPointActivity$3;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$3;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.google.android.apps.maps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$3;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$3;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->finish()V

    .line 72
    return-void
.end method
