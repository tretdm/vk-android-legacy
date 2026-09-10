.class Lcom/vkontakte/android/NewVideoPlayerActivity$12;
.super Landroid/webkit/WebViewClient;
.source "NewVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->playExternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

.field private final synthetic val$canShowProgress:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->val$canShowProgress:[Z

    .line 637
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->val$canShowProgress:[Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 640
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 641
    return v2
.end method
