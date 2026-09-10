.class Lcom/vkontakte/android/ValidationActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "ValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ValidationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ValidationActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ValidationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ValidationActivity$2;->this$0:Lcom/vkontakte/android/ValidationActivity;

    .line 102
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progr"    # I

    .prologue
    .line 104
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, "visible":Z
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/ValidationActivity$2;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ValidationActivity;->access$0(Lcom/vkontakte/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/ValidationActivity$2;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ValidationActivity;->access$0(Lcom/vkontakte/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 104
    .end local v0    # "visible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    .restart local v0    # "visible":Z
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/ValidationActivity$2;->this$0:Lcom/vkontakte/android/ValidationActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ValidationActivity;->access$0(Lcom/vkontakte/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method
