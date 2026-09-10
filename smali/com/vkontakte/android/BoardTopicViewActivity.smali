.class public Lcom/vkontakte/android/BoardTopicViewActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/PaginationView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;,
        Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkontakte/android/ui/PaginationView$Listener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private commentBar:Landroid/view/View;

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

.field private currentPage:I

.field private dataLoading:Z

.field private firstLoad:Z

.field private focusable:Landroid/view/View;

.field protected footerView:Landroid/widget/FrameLayout;

.field protected headerView:Landroid/widget/FrameLayout;

.field private ignoreNextScroll:Z

.field private ignoreScrollEvents:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

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

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadUpOnReady:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->visibleViews:Ljava/util/ArrayList;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    .line 62
    iput v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->resetScroll:Z

    .line 64
    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->sendingComment:Z

    .line 66
    iput-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    iput-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 67
    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreNextScroll:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreScrollEvents:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->firstLoad:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->visibleViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->resetScroll:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->resetScroll:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->firstLoad:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreNextScroll:Z

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreScrollEvents:Z

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->firstLoad:Z

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pollWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadUpOnReady:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadUpOnReady:Z

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadDataUp()V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/BoardTopicViewActivity;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->adapter:Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;

    return-object v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$36(Lcom/vkontakte/android/BoardTopicViewActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->sendingComment:Z

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/api/BoardComment;)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicViewActivity;->deleteComment(Lcom/vkontakte/android/api/BoardComment;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->sendComment()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/BoardTopicViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadOnReady:Z

    return v0
.end method

.method private deleteComment(Lcom/vkontakte/android/api/BoardComment;)V
    .locals 5
    .param p1, "comment"    # Lcom/vkontakte/android/api/BoardComment;

    .prologue
    const/4 v4, 0x0

    .line 696
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteComment;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget v3, p1, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/BoardDeleteComment;-><init>(III)V

    .line 697
    new-instance v1, Lcom/vkontakte/android/BoardTopicViewActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/BoardTopicViewActivity$8;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/api/BoardComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardDeleteComment;->setCallback(Lcom/vkontakte/android/api/BoardDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 709
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 710
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 711
    return-void
.end method

.method private loadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    .line 205
    new-instance v1, Lcom/vkontakte/android/api/BoardGetComments;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "gid"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "tid"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    add-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x28

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vkontakte/android/api/BoardGetComments;-><init>(IIII)V

    .line 206
    new-instance v0, Lcom/vkontakte/android/BoardTopicViewActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$3;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/BoardGetComments;->setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 273
    return-void

    .line 205
    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private loadDataUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    .line 277
    new-instance v0, Lcom/vkontakte/android/api/BoardGetComments;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    add-int/lit8 v3, v3, -0x14

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/BoardGetComments;-><init>(IIII)V

    .line 278
    new-instance v1, Lcom/vkontakte/android/BoardTopicViewActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$4;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardGetComments;->setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 346
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 770
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 772
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 773
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 774
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->resetScroll:Z

    .line 778
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 780
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 781
    iput-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 786
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 787
    iput-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->loadUpReq:Lcom/vkontakte/android/APIRequest;

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V

    .line 793
    return-void
.end method

.method private sendComment()V
    .locals 7

    .prologue
    const v4, 0x7f060058

    const/4 v6, 0x0

    .line 565
    iget-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->sendingComment:Z

    if-eqz v2, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->sendingComment:Z

    .line 567
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "_txt":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    move-object v1, v0

    .line 582
    .local v1, "txt":Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/api/BoardAddComment;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gid"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tid"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/vkontakte/android/api/BoardAddComment;-><init>(IILjava/lang/String;)V

    .line 583
    new-instance v3, Lcom/vkontakte/android/BoardTopicViewActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity$6;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/BoardAddComment;->setCallback(Lcom/vkontakte/android/api/BoardAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 634
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 717
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 720
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "offset"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    .line 79
    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    if-gez v5, :cond_1

    iput v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    .line 81
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    if-lez v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->resetScroll:Z

    .line 83
    :cond_2
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    .line 85
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 87
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    .line 88
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 94
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->headerView:Landroid/widget/FrameLayout;

    .line 98
    new-instance v4, Landroid/widget/ProgressBar;

    .end local v4    # "pb":Landroid/widget/ProgressBar;
    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v4    # "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pollWrap:Landroid/widget/LinearLayout;

    .line 108
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pollWrap:Landroid/widget/LinearLayout;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 110
    new-instance v5, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 111
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v9, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v9, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 113
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pollWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 114
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;

    invoke-direct {v6, p0, v9}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->adapter:Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 117
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 118
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 119
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 120
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 123
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 125
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    .line 128
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    const v6, 0x7f090077

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v3, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->noNewsView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    .line 139
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v5, Lcom/vkontakte/android/ui/PaginationView;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/PaginationView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5, v11}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 148
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/PaginationView;->setListener(Lcom/vkontakte/android/ui/PaginationView$Listener;)V

    .line 149
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;

    invoke-direct {v6, p0, v9}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/BoardTopicViewActivity$CommentPhotosAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v5, v6, v7, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 153
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    .line 154
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 156
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->wrapView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    .line 160
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 161
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 162
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 164
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->focusable:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    const v5, 0x7f030015

    invoke-static {p0, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    .line 167
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_closed"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    const v6, 0x7f060060

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/BoardTopicViewActivity$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$1;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    const v6, 0x7f060058

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Lcom/vkontakte/android/BoardTopicViewActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$2;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    const v6, 0x7f06005f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->setContentView(Landroid/view/View;)V

    .line 200
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V

    .line 201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v7, 0x7f060058

    .line 678
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_closed"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 680
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 682
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[post"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    .line 684
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "[post"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 686
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 687
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 689
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 691
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
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

    .line 639
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 640
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v2

    .line 641
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 642
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090125

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_admin"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/api/BoardComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_4

    :cond_2
    if-nez p3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/BoardTopicViewActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/BoardTopicViewActivity$7;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/api/BoardComment;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 671
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 673
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 12
    .param p1, "num"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 798
    if-lez p1, :cond_2

    .line 799
    add-int/lit8 v5, p1, -0x1

    mul-int/lit8 v2, v5, 0x14

    .line 800
    .local v2, "offset":I
    iput p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    .line 801
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5, p1}, Lcom/vkontakte/android/ui/PaginationView;->setCurrentPage(I)V

    .line 802
    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    if-lt v2, v5, :cond_1

    iget v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1

    .line 803
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 804
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 805
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v5, :cond_0

    .line 806
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 807
    iput-object v11, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->refreshReq:Lcom/vkontakte/android/APIRequest;

    .line 851
    .end local v2    # "offset":I
    :cond_0
    :goto_0
    return-void

    .line 810
    .restart local v2    # "offset":I
    :cond_1
    iput v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    .line 812
    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 814
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->refresh()V

    goto :goto_0

    .line 818
    .end local v2    # "offset":I
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 819
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090190

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/PaginationView;->getPageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 822
    .local v0, "edit":Landroid/widget/EditText;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 824
    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 828
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 829
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 830
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 831
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 832
    .local v3, "padding":I
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 834
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 835
    const v6, 0x7f09018f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 836
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 837
    const v6, 0x7f09001d

    new-instance v7, Lcom/vkontakte/android/BoardTopicViewActivity$9;

    invoke-direct {v7, p0, v0}, Lcom/vkontakte/android/BoardTopicViewActivity$9;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 848
    const v6, 0x7f09001c

    invoke-virtual {v5, v6, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 849
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
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

    .line 725
    iget-boolean v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreScrollEvents:Z

    if-nez v3, :cond_0

    .line 727
    iget-boolean v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreNextScroll:Z

    if-eqz v3, :cond_4

    .line 728
    iput-boolean v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->ignoreNextScroll:Z

    .line 733
    :cond_0
    :goto_0
    add-int v3, p1, p2

    iget v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

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

    .line 734
    .local v2, "page":I
    iget v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    if-eq v2, v3, :cond_1

    .line 735
    iput v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->currentPage:I

    .line 736
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/PaginationView;->setCurrentPage(I)V

    .line 738
    :cond_1
    const/4 v3, -0x1

    if-gt p1, v3, :cond_3

    .line 739
    iget-boolean v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->startOffset:I

    if-lez v3, :cond_3

    .line 740
    iget-boolean v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    if-eqz v3, :cond_5

    .line 741
    iput-boolean v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    .line 742
    iput-boolean v7, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadUpOnReady:Z

    .line 767
    :cond_3
    :goto_1
    return-void

    .line 730
    .end local v2    # "page":I
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 731
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    goto :goto_0

    .line 743
    .restart local v2    # "page":I
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 744
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 745
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 746
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 747
    .local v0, "firstVisible":I
    const/4 v1, -0x1

    .line 748
    .local v1, "itemOffset":I
    if-nez v0, :cond_7

    .line 749
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-le v3, v6, :cond_6

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 751
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 758
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 759
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedUpComments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 760
    iput-boolean v7, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadingUp:Z

    .line 761
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadDataUp()V

    goto :goto_1

    .line 754
    :cond_7
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-le v3, v7, :cond_6

    .line 755
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_2

    .line 763
    .end local v0    # "firstVisible":I
    .end local v1    # "itemOffset":I
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadDataUp()V

    goto :goto_1
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 557
    return-void
.end method

.method public onScrollStopped()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->pagination:Lcom/vkontakte/android/ui/PaginationView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PaginationView;->hide()V

    .line 562
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 538
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 539
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    if-eqz v0, :cond_2

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    .line 541
    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadOnReady:Z

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->comments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloadedComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity;->preloading:Z

    .line 547
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V

    goto :goto_0

    .line 549
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/vkontakte/android/BoardTopicViewActivity$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$5;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method
