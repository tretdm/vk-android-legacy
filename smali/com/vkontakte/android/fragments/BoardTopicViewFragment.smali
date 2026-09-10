.class public Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/PaginationView$Listener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;,
        Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkontakte/android/ui/PaginationView$Listener;",
        "Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private commentBar:Lcom/vkontakte/android/ui/WriteBar;

.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/widget/LinearLayout;

.field private createHint:Landroid/widget/TextView;

.field private currentPage:I

.field private dataLoading:Z

.field private firstLoad:Z

.field private focusable:Landroid/view/View;

.field protected footerView:Landroid/widget/FrameLayout;

.field protected headerView:Landroid/widget/FrameLayout;

.field private ignoreNextScroll:Z

.field private ignoreScrollEvents:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdated:I

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private loadUpReq:Lcom/vkontakte/android/APIRequest;

.field private moreAvailable:Z

.field protected noNewsView:Landroid/widget/TextView;

.field private pagination:Lcom/vkontakte/android/ui/PaginationView;

.field private pollWrap:Landroid/widget/LinearLayout;

.field private preloadOnReady:Z

.field private preloadUpOnReady:Z

.field private preloadedComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field private preloadedUpComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Z

.field private preloadingUp:Z

.field private refreshReq:Lcom/vkontakte/android/APIRequest;

.field private resetScroll:Z

.field private sendingComment:Z

.field private startOffset:I

.field private visibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wrapView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadUpOnReady:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->visibleViews:Ljava/util/ArrayList;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    .line 81
    iput v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    .line 82
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->resetScroll:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendingComment:Z

    .line 85
    iput-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    iput-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreNextScroll:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreScrollEvents:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->firstLoad:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->visibleViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->resetScroll:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->resetScroll:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->firstLoad:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreNextScroll:Z

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreScrollEvents:Z

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->firstLoad:Z

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pollWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->lastUpdated:I

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadUpOnReady:Z

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadUpOnReady:Z

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadDataUp()V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendingComment:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->deleteComment(Lcom/vkontakte/android/api/BoardComment;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    return-void
.end method

.method private deleteComment(Lcom/vkontakte/android/api/BoardComment;)V
    .locals 5
    .param p1, "comment"    # Lcom/vkontakte/android/api/BoardComment;

    .prologue
    const/4 v4, 0x0

    .line 804
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteComment;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, p1, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/BoardDeleteComment;-><init>(III)V

    .line 805
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$9;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardDeleteComment;->setCallback(Lcom/vkontakte/android/api/BoardDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 819
    return-void
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    .line 271
    new-instance v1, Lcom/vkontakte/android/api/BoardGetComments;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "gid"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "tid"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x28

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vkontakte/android/api/BoardGetComments;-><init>(IIII)V

    .line 272
    new-instance v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/BoardGetComments;->setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 348
    return-void

    .line 271
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private loadDataUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    .line 352
    new-instance v0, Lcom/vkontakte/android/api/BoardGetComments;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    add-int/lit8 v3, v3, -0x14

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/BoardGetComments;-><init>(IIII)V

    .line 353
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardGetComments;->setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 352
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 428
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 887
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 889
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 890
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->resetScroll:Z

    .line 892
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 894
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 895
    iput-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 900
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 901
    iput-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 904
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    .line 907
    return-void
.end method

.method private sendComment()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 666
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendingComment:Z

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendingComment:Z

    .line 668
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "_txt":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :cond_2
    move-object v3, v6

    .line 679
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v4

    .line 681
    .local v4, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v0, Lcom/vkontakte/android/api/BoardAddComment;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "tid"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "title"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/BoardAddComment;-><init>(IILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 682
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;

    invoke-direct {v1, p0, v3, v4}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardAddComment;->setCallback(Lcom/vkontakte/android/api/BoardAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 742
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 249
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 250
    .local v2, "progress":Landroid/app/ProgressDialog;
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 253
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 254
    new-instance v0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$2;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Landroid/app/ProgressDialog;)V

    .line 260
    .local v0, "onDone":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$3;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$3;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Landroid/app/ProgressDialog;)V

    .line 266
    .local v1, "onFailed":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3, v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 974
    iget v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->lastUpdated:I

    if-nez v0, :cond_0

    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->lastUpdated:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 747
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 748
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 749
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "offset"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    .line 100
    iget v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    if-gez v7, :cond_1

    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    .line 102
    :cond_1
    iget v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    if-lez v7, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->resetScroll:Z

    .line 104
    :cond_2
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    .line 106
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 108
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    .line 109
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 110
    .local v5, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 114
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    .line 118
    new-instance v5, Landroid/widget/ProgressBar;

    .end local v5    # "pb":Landroid/widget/ProgressBar;
    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v5    # "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x42300000    # 44.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/4 v7, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 124
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pollWrap:Landroid/widget/LinearLayout;

    .line 127
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pollWrap:Landroid/widget/LinearLayout;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 129
    new-instance v7, Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 130
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 131
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 132
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pollWrap:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 133
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setFromTop(Z)V

    .line 134
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;)V

    iput-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v8, -0x1f1f20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 137
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v8, -0x1f1f20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 138
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v8, -0x1f1f20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 139
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 140
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 141
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalScrollBarEnabled(Z)V

    .line 142
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 143
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 145
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    .line 148
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    const v8, -0x888889

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    const v8, 0x7f060068

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v3, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 159
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v7, Lcom/vkontakte/android/ui/PaginationView;

    invoke-direct {v7, p1}, Lcom/vkontakte/android/ui/PaginationView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    .line 166
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 167
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/PaginationView;->setListener(Lcom/vkontakte/android/ui/PaginationView$Listener;)V

    .line 168
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    new-instance v7, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/fragments/BoardTopicViewFragment$CommentPhotosAdapter;)V

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v7, v8, v9, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 172
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    .line 173
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 175
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    .line 179
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 180
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 181
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 183
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->focusable:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v7, Lcom/vkontakte/android/ui/WriteBar;

    invoke-direct {v7, p1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 186
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 187
    .local v6, "shadow":Landroid/view/View;
    const v7, 0x7f0200b8

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v4, "lpcbs":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 190
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "is_closed"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/WriteBar;->setVisibility(I)V

    .line 195
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const v8, 0x7f08017a

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V

    .line 207
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "gid"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->setUploadType(II)V

    .line 208
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 230
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "tid"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    .line 235
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    const v8, 0x7f0601ea

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 239
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->wrapView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->createHint:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    const-string v1, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 828
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 831
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 832
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 834
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 792
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_closed"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 794
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 796
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[post"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    .line 798
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "[post"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->commentBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 753
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 754
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v2

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 756
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 759
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "is_admin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/api/BoardComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_4

    :cond_2
    if-nez p3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_4
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 763
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$8;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/api/BoardComment;)V

    invoke-virtual {v3, v2, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 787
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 12
    .param p1, "num"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 912
    if-lez p1, :cond_2

    .line 913
    add-int/lit8 v5, p1, -0x1

    mul-int/lit8 v2, v5, 0x14

    .line 914
    .local v2, "offset":I
    iput p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    .line 915
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5, p1}, Lcom/vkontakte/android/ui/PaginationView;->setCurrentPage(I)V

    .line 916
    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    if-lt v2, v5, :cond_1

    iget v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1

    .line 917
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 918
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 919
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v5, :cond_0

    .line 920
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 921
    iput-object v11, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 965
    .end local v2    # "offset":I
    :cond_0
    :goto_0
    return-void

    .line 924
    .restart local v2    # "offset":I
    :cond_1
    iput v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    .line 926
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 928
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->refresh()V

    goto :goto_0

    .line 932
    .end local v2    # "offset":I
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 933
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06012f

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/PaginationView;->getPageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 936
    .local v0, "edit":Landroid/widget/EditText;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 938
    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 939
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 941
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 942
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 943
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 944
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 946
    .local v3, "padding":I
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 948
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 949
    const v6, 0x7f06012e

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 950
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 951
    const v6, 0x7f060028

    new-instance v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;

    invoke-direct {v7, p0, v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$10;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 962
    const v6, 0x7f060027

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 963
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 978
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 979
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 980
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    .line 970
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 983
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 984
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 985
    return-void
.end method

.method public onScroll(III)V
    .locals 8
    .param p1, "firstItem"    # I
    .param p2, "visibleCount"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 839
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreScrollEvents:Z

    if-nez v3, :cond_0

    .line 841
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreNextScroll:Z

    if-eqz v3, :cond_4

    .line 842
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->ignoreNextScroll:Z

    .line 847
    :cond_0
    :goto_0
    add-int v3, p1, p2

    iget v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 848
    .local v2, "page":I
    iget v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    if-eq v2, v3, :cond_1

    .line 849
    iput v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->currentPage:I

    .line 850
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/PaginationView;->setCurrentPage(I)V

    .line 852
    :cond_1
    const/4 v3, -0x1

    if-gt p1, v3, :cond_3

    .line 853
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->startOffset:I

    if-lez v3, :cond_3

    .line 854
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    if-eqz v3, :cond_5

    .line 855
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    .line 856
    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadUpOnReady:Z

    .line 881
    :cond_3
    :goto_1
    return-void

    .line 844
    .end local v2    # "page":I
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 845
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    goto :goto_0

    .line 857
    .restart local v2    # "page":I
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 858
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 859
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 860
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 861
    .local v0, "firstVisible":I
    const/4 v1, -0x1

    .line 862
    .local v1, "itemOffset":I
    if-nez v0, :cond_7

    .line 863
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-le v3, v6, :cond_6

    .line 864
    add-int/lit8 v0, v0, 0x1

    .line 865
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 872
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 873
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 874
    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadingUp:Z

    .line 875
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadDataUp()V

    goto :goto_1

    .line 868
    :cond_7
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-le v3, v7, :cond_6

    .line 869
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_2

    .line 877
    .end local v0    # "firstVisible":I
    .end local v1    # "itemOffset":I
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadDataUp()V

    goto :goto_1
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 658
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 663
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 991
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 639
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 640
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    if-eqz v0, :cond_2

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    .line 642
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadOnReady:Z

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->comments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->preloading:Z

    .line 648
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    goto :goto_0

    .line 650
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$6;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method
