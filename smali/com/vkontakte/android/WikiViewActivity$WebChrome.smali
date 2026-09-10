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
    .line 285
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebChrome;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity$WebChrome;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$WebChrome;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->setProgress(I)V

    .line 288
    return-void
.end method
