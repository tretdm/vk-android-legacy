.class public Lcom/vkontakte/android/fragments/PhotoNewsFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "PhotoNewsFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/PhotoNewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoNewsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/PhotoNewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoNewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->from:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 46
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 22
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedGet;

    if-nez p1, :cond_0

    const-string v0, "0"

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IZI)V

    new-instance v0, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoNewsFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoNewsFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0d01a7

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    return-object v0
.end method

.method protected isPhotosMode()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
