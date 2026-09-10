.class Lcom/vkontakte/android/WikiViewActivity$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "WikiViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WikiViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebChrome;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity$WebChrome;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 410
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALERT -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v2, 0x8

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->setProgress(I)V

    .line 401
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$3(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$3(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    :cond_0
    const/16 v0, 0x32

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$4(Lcom/vkontakte/android/WikiViewActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WikiViewActivity;->access$2(Lcom/vkontakte/android/WikiViewActivity;)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$5(Lcom/vkontakte/android/WikiViewActivity;Z)V

    .line 408
    :cond_1
    return-void
.end method
