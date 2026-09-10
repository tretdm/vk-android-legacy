.class public Lcom/vkontakte/android/fragments/CommentsPostListFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "CommentsPostListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private from:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->from:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/CommentsPostListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/CommentsPostListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/CommentsPostListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/CommentsPostListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->from:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected canUnsubscribe()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 45
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedGetComments;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {v1, v0, p2}, Lcom/vkontakte/android/api/NewsfeedGetComments;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/vkontakte/android/fragments/CommentsPostListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/CommentsPostListFragment$1;-><init>(Lcom/vkontakte/android/fragments/CommentsPostListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/NewsfeedGetComments;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 37
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "news"

    return-object v0
.end method

.method protected isFeedbackStyle()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
