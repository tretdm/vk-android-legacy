.class public Lcom/vkontakte/android/fragments/FaveVideoListFragment;
.super Lcom/vkontakte/android/fragments/AbsVideoListFragment;
.source "FaveVideoListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/FaveVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 49
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/vkontakte/android/api/VideoGet;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkontakte/android/api/VideoGet;-><init>(IIII)V

    new-instance v1, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FaveVideoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/FaveVideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGet;->setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 41
    return-void
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "news"

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    .line 54
    return-void
.end method
