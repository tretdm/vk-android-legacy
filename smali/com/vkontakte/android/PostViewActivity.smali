.class public Lcom/vkontakte/android/PostViewActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;,
        Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;,
        Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;
    }
.end annotation


# static fields
.field private static final EDIT_REQUEST:I = 0x10e8

.field public static final RESULT_DELETED:I = 0x2

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I


# instance fields
.field private actionBar:Landroid/view/View;

.field private canAdmin:Z

.field private cancelBtn:Lcom/vkontakte/android/TitleBarButton;

.field private commentBar:Landroid/view/View;

.field private commentBtn:Landroid/widget/ImageView;

.field private comments:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field private commentsProgress:Landroid/widget/ProgressBar;

.field private e:Lcom/vkontakte/android/NewsEntry;

.field private headerView:Landroid/view/View;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private lastUpdated:J

.field private layout:Landroid/widget/LinearLayout;

.field private likeBtn:Landroid/widget/ImageView;

.field private likeReq:Lcom/vkontakte/android/APIRequest;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

.field private loadingComments:Z

.field private photos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:I

.field private replyToName:Ljava/lang/String;

.field private replyToUid:I

.field private retweetBtn:Landroid/widget/ImageView;

.field private timer:Ljava/util/Timer;

.field private type:I

.field private viCount:I

.field private viStart:I

.field private videoBottomPadding:Z

.field private visibleViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->visibleViews:Ljava/util/Vector;

    .line 85
    iput-boolean v1, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    .line 89
    iput v2, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    iput v2, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    .line 96
    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->type:I

    .line 97
    iput-boolean v1, p0, Lcom/vkontakte/android/PostViewActivity;->videoBottomPadding:Z

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PostViewActivity;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1535
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PostViewActivity;->openPhotoList(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->sendComment()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->showPostCommentActions(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->showPhotoCommentActions(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->activateCommentBar()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->like()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->retweet()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->deactivateCommentBar()V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->likeComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/PostViewActivity;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/TitleBarButton;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/PostViewActivity;J)V
    .locals 0

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/vkontakte/android/PostViewActivity;->lastUpdated:J

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/PostViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->doRetweet()V

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1498
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->deletePost()V

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->saveRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->restoreComment(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1448
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->editRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PostViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1493
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->cropMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method private activateCommentBar()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x8

    const v3, 0x7f060058

    const/4 v5, 0x0

    .line 624
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 627
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 628
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$17;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$17;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 633
    const-wide/16 v3, 0x64

    .line 628
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 640
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_0
    return-void

    .line 635
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 636
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 637
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method private broadcastUpdate()V
    .locals 4

    .prologue
    .line 968
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v1, :cond_0

    .line 977
    :goto_0
    return-void

    .line 969
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const-string v1, "comments"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    const-string v1, "likes"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    const-string v1, "liked"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 975
    const-string v1, "retweeted"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private cropMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1494
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    .line 1495
    .local v0, "m":I
    :goto_0
    const/4 v1, 0x0

    mul-int/lit8 v2, v0, 0x19

    mul-int/lit16 v3, v0, 0x12c

    mul-int/lit16 v4, v0, 0x82

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1494
    .end local v0    # "m":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private deactivateCommentBar()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 644
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 646
    new-instance v2, Lcom/vkontakte/android/PostViewActivity$18;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/PostViewActivity$18;-><init>(Lcom/vkontakte/android/PostViewActivity;Landroid/os/Handler;)V

    .line 645
    invoke-virtual {v0, v1, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 654
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$19;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$19;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 660
    const-wide/16 v3, 0xfa

    .line 654
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    .line 662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    .line 663
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_0
    return-void
.end method

.method private deleteComment(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 696
    new-instance v0, Lcom/vkontakte/android/api/WallDeleteComment;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vkontakte/android/api/WallDeleteComment;-><init>(IIII)V

    .line 697
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$21;-><init>(Lcom/vkontakte/android/PostViewActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 720
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 721
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 722
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 1499
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 1500
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$33;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$33;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1519
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1520
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1521
    return-void
.end method

.method private doRetweet()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    .line 1039
    .local v6, "wasLiked":Z
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1042
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 1043
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    .line 1044
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZI)V

    .line 1045
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$29;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/PostViewActivity$29;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1083
    return-void
.end method

.method private editRepostComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1449
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1450
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 1452
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1453
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1454
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1455
    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1456
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1457
    const v2, 0x7f09009f

    new-instance v3, Lcom/vkontakte/android/PostViewActivity$31;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/PostViewActivity$31;-><init>(Lcom/vkontakte/android/PostViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1463
    const v2, 0x7f09001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1464
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1465
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 669
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private like()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 980
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 982
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v2, "method"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "wall.addLike"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v2, "method"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "likes.add"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 984
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 989
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    .line 992
    .local v6, "wasLiked":Z
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 994
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 995
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 996
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    .line 998
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZI)V

    .line 999
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$27;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/PostViewActivity$27;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1019
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 998
    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 1020
    return-void

    .line 986
    .end local v6    # "wasLiked":Z
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 987
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 993
    .restart local v6    # "wasLiked":Z
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 994
    goto :goto_2
.end method

.method private likeComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 6
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 678
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-boolean v1, p1, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkontakte/android/NewsComment;->cid:I

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZI)V

    .line 679
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$20;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 692
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 693
    return-void

    .line 678
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    if-eqz v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 752
    :cond_0
    if-eqz p1, :cond_2

    const/4 v7, 0x0

    .line 753
    .local v7, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 758
    .local v3, "offset":I
    const/16 v6, 0xa

    .line 759
    .local v6, "count":I
    if-nez p1, :cond_1

    .line 760
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v7

    sub-int v3, v0, v6

    .line 765
    :cond_1
    move v3, v7

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    .line 768
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eqz p1, :cond_3

    const/16 v4, 0xa

    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIII)V

    .line 769
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$23;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 829
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 752
    .end local v3    # "offset":I
    .end local v6    # "count":I
    .end local v7    # "csize":I
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    goto :goto_1

    .restart local v3    # "offset":I
    .restart local v6    # "count":I
    .restart local v7    # "csize":I
    :cond_3
    move v4, v6

    .line 768
    goto :goto_2
.end method

.method private loadVideoInfo()V
    .locals 3

    .prologue
    .line 833
    new-instance v0, Lcom/vkontakte/android/api/VideoGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoGetInfo;-><init>(II)V

    .line 834
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$24;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetInfo;->setCallback(Lcom/vkontakte/android/api/VideoGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 858
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 859
    return-void
.end method

.method private openPhotoList(ILandroid/view/View;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1536
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v5, v6, [Lcom/vkontakte/android/Photo;

    .line 1537
    .local v5, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 1538
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1539
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "photo_list"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1540
    const-string v6, "photo_index"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1541
    const-string v6, "photo"

    aget-object v7, v5, p1

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    .line 1543
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v6, 0x5

    .line 1544
    .local v3, "iw":I
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v6, 0x5

    .line 1545
    .local v1, "ih":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v7, v8

    invoke-static {p2, v6, v7, v3, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 1546
    .local v4, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1550
    .end local v1    # "ih":I
    .end local v3    # "iw":I
    .end local v4    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    return-void

    .line 1537
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Photo;

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private restoreComment(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 725
    new-instance v0, Lcom/vkontakte/android/api/WallRestoreComment;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vkontakte/android/api/WallRestoreComment;-><init>(IIII)V

    .line 726
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$22;-><init>(Lcom/vkontakte/android/PostViewActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallRestoreComment;->setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 746
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 747
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 748
    return-void
.end method

.method private retweet()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1024
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1026
    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1027
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1028
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$28;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$28;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private saveRepostComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newComment"    # Ljava/lang/String;

    .prologue
    .line 1468
    new-instance v0, Lcom/vkontakte/android/api/WallEdit;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkontakte/android/api/WallEdit;-><init>(IILjava/lang/String;)V

    .line 1469
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$32;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$32;-><init>(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallEdit;->setCallback(Lcom/vkontakte/android/api/WallEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1489
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1490
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1491
    return-void
.end method

.method private sendComment()V
    .locals 6

    .prologue
    const v4, 0x7f060058

    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 915
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v4, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;II)V

    .line 916
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$26;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/PostViewActivity$26;-><init>(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 964
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private showPhotoCommentActions(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 575
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 577
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, v3, 0x3

    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v7, :cond_5

    :cond_2
    move v3, v5

    :goto_1
    add-int/2addr v3, v6

    new-array v2, v3, [Ljava/lang/String;

    .line 578
    .local v2, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 579
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090045

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 580
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090125

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 581
    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_3

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v6, :cond_4

    :cond_3
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 582
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 585
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    new-instance v4, Lcom/vkontakte/android/PostViewActivity$16;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/PostViewActivity$16;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 620
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "items":[Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 577
    goto :goto_1

    .line 583
    .restart local v1    # "i":I
    .restart local v2    # "items":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v1, 0x3

    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_7

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v7, :cond_8

    :cond_7
    move v3, v5

    :goto_3
    add-int/2addr v6, v3

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v6

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v3, v4

    .line 583
    goto :goto_3
.end method

.method private showPostCommentActions(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 521
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 523
    .local v0, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v6, v3, 0x4

    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v7, :cond_5

    :cond_2
    move v3, v5

    :goto_1
    add-int/2addr v3, v6

    new-array v2, v3, [Ljava/lang/String;

    .line 524
    .local v2, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 525
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090045

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 526
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090125

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 527
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v3, v0, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v3, :cond_6

    const v3, 0x7f090143

    :goto_2
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 528
    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_3

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v6, :cond_4

    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 529
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 532
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    new-instance v4, Lcom/vkontakte/android/PostViewActivity$15;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/PostViewActivity$15;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 571
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "items":[Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 523
    goto :goto_1

    .line 527
    .restart local v2    # "items":[Ljava/lang/String;
    :cond_6
    const v3, 0x7f090142

    goto :goto_2

    .line 530
    .restart local v1    # "i":I
    :cond_7
    add-int/lit8 v6, v1, 0x4

    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_8

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v7, :cond_9

    :cond_8
    move v3, v5

    :goto_4
    add-int/2addr v6, v3

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v6

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v3, v4

    .line 530
    goto :goto_4
.end method

.method private updateLikes()V
    .locals 6

    .prologue
    const v2, 0x7f0600fd

    const v5, 0x7f0600fc

    const/16 v4, 0x8

    .line 870
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 871
    .local v0, "nl":I
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 872
    :cond_0
    if-lez v0, :cond_2

    .line 873
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a000a

    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->likeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020173

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 890
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->retweetBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f02017a

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 891
    return-void

    .line 873
    :cond_1
    const v2, 0x7f0a0009

    goto :goto_0

    .line 875
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 877
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 889
    :cond_4
    const v1, 0x7f020172

    goto :goto_3

    .line 890
    :cond_5
    const v1, 0x7f020178

    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->hideKeyboard()V

    .line 674
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->finish()V

    .line 675
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1530
    iget-wide v0, p0, Lcom/vkontakte/android/PostViewActivity;->lastUpdated:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vkontakte/android/PostViewActivity;->lastUpdated:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1443
    const/16 v0, 0x10e8

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1444
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->finish()V

    .line 1446
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1086
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1087
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v0, v3, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    const v2, 0x7f0600fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->videoBottomPadding:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    :cond_0
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1090
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1088
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 39
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "entry"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "type"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/PostViewActivity;->type:I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    const v32, 0x7f090006

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setTitle(I)V

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    const v32, 0x7f090008

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setTitle(I)V

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 108
    new-instance v12, Landroid/content/Intent;

    const-class v32, Lcom/vkontakte/android/BoardTopicViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v12, "intent":Landroid/content/Intent;
    const-string v32, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v32, "tid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v32, "gid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v33, v0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x41a00000    # 20.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v18, v0

    .line 113
    .local v18, "pages":I
    const-string v32, "offset"

    add-int/lit8 v33, v18, -0x1

    mul-int/lit8 v33, v33, 0x14

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "is_admin"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    const/16 v33, 0x40

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v32

    if-eqz v32, :cond_3

    :cond_2
    const-string v32, "is_admin"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v18    # "pages":I
    :cond_4
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/PhotoAttachment;

    .line 120
    .local v20, "ph":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v21, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 121
    .local v21, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->date:I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 123
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->id:I

    .line 125
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nComments:I

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->ownerPhoto:Ljava/lang/String;

    .line 132
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 133
    new-instance v12, Landroid/content/Intent;

    const-class v32, Lcom/vkontakte/android/PhotoViewerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v32, "photo_list"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lcom/vkontakte/android/Photo;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v21, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->finish()V

    .line 518
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "ph":Lcom/vkontakte/android/PhotoAttachment;
    .end local v21    # "photo":Lcom/vkontakte/android/Photo;
    :cond_5
    :goto_0
    return-void

    .line 140
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->finish()V

    goto :goto_0

    .line 146
    :cond_7
    sget-object v32, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 147
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    iget v0, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    const/high16 v33, 0x41c00000    # 24.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    sub-int v26, v32, v33

    .line 148
    .local v26, "tSize":I
    const/16 v32, 0x25c

    move/from16 v0, v26

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 149
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3f2a7efa    # 0.666f

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move/from16 v0, v26

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V

    .line 152
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    new-instance v32, Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 155
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v14, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    const v32, 0x7f030036

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    const v32, 0x7f030015

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setContentView(Landroid/view/View;)V

    .line 177
    const v32, 0x7f030037

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-virtual/range {v32 .. v35}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const v33, -0xe0e0f

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setFromTop(Z)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "is_admin"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    const/16 v33, 0x40

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v32

    if-nez v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    if-eqz v32, :cond_10

    const/16 v32, 0x0

    :goto_1
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_11

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\n"

    const-string v35, "<br/>"

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v33

    check-cast v33, Landroid/text/Spannable;

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 199
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f5

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f6

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ui/FlowLayout;

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_a

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const/16 v16, 0x0

    .local v16, "nPhotos":I
    const/16 v22, 0x0

    .line 208
    .local v22, "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_12

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_13

    .line 294
    .end local v16    # "nPhotos":I
    .end local v22    # "pi":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f3

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$2;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 307
    .local v25, "pt":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingLeft()I

    move-result v32

    const/16 v33, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingRight()I

    move-result v34

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingBottom()I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$3;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f9

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_b

    .line 320
    const v32, 0x7f0600f7

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 321
    const v32, 0x7f0600f7

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "\n"

    const-string v35, "<br/>"

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v33

    check-cast v33, Landroid/text/Spannable;

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .end local v25    # "pt":Landroid/view/View;
    :cond_b
    const v32, 0x7f030028

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v32, v0

    const v33, 0x7f0600ac

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/LoadMoreCommentsView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020224

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v32, v0

    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v34, -0x1

    const/high16 v35, 0x42200000    # 40.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    invoke-direct/range {v33 .. v35}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$4;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    .line 341
    new-instance v32, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct/range {v32 .. v32}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f060060

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$5;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f060058

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/EditText;

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$6;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f06005f

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020224

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    new-instance v32, Landroid/widget/ProgressBar;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020224

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/high16 v33, 0x41f00000    # 30.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 374
    .local v19, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    const v33, -0x141415

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$7;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$8;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$8;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 427
    const v32, 0x7f0600ee

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->likeBtn:Landroid/widget/ImageView;

    .line 428
    const v32, 0x7f0600f2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->retweetBtn:Landroid/widget/ImageView;

    .line 429
    const v32, 0x7f0600f0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentBtn:Landroid/widget/ImageView;

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 433
    const v32, 0x7f0600ed

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$9;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$9;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    const v32, 0x7f0600f1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$10;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const v32, 0x7f0600ef

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setEnabled(Z)V

    .line 447
    const v32, 0x7f0600f1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setEnabled(Z)V

    .line 449
    const v32, 0x7f0600ef

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$11;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v32, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09001c

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->addViewAtRight(Landroid/view/View;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 460
    const/high16 v32, 0x428c0000    # 70.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 461
    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 462
    sget-object v32, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "is_admin"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    const/16 v33, 0x40

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v32

    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    if-nez v32, :cond_d

    .line 463
    :cond_c
    const/high16 v32, 0x40800000    # 4.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 464
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v32, v0

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v32, v0

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$12;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$12;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fc

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Lcom/vkontakte/android/PostViewActivity$13;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$13;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    sget-object v32, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    const-string v33, "is_admin"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    const/16 v33, 0x40

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v32

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    sget v33, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v32, v0

    if-nez v32, :cond_f

    .line 487
    :cond_e
    const v32, 0x7f060180

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 488
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 489
    .local v9, "btnMenu":Landroid/widget/ImageView;
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 490
    const v32, 0x7f0200c6

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 492
    .local v8, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x10

    move/from16 v0, v32

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 493
    const/high16 v32, 0x40400000    # 3.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 494
    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 495
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/16 v35, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 496
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v32, Lcom/vkontakte/android/PostViewActivity$14;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$14;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/PostViewActivity;->addViewAtRight(Landroid/view/View;)V

    .line 515
    .end local v8    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "btnMenu":Landroid/widget/ImageView;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->loadVideoInfo()V

    goto/16 :goto_0

    .line 185
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    const/16 v32, 0x1

    goto/16 :goto_1

    .line 191
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 194
    .local v27, "v":Landroid/view/View;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x2

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v32, 0x40e00000    # 7.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v34

    const/high16 v35, 0x40e00000    # 7.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 208
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v27    # "v":Landroid/view/View;
    .restart local v16    # "nPhotos":I
    .restart local v22    # "pi":I
    :cond_12
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_9

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 209
    :cond_13
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 210
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v7

    .line 211
    .local v7, "attView":Landroid/view/View;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v32, v0

    if-eqz v32, :cond_15

    move-object/from16 v32, v6

    .line 212
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    .line 213
    new-instance v21, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/Photo;-><init>()V

    .restart local v21    # "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v32, v6

    .line 214
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object/from16 v32, v6

    .line 215
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual/range {v32 .. v32}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object/from16 v32, v6

    .line 216
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->albumID:I

    move-object/from16 v32, v6

    .line 217
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->id:I

    move-object/from16 v32, v6

    .line 218
    check-cast v32, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/Photo;->date:I

    .line 220
    const-string v32, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    move/from16 v11, v22

    .line 223
    .local v11, "idx":I
    new-instance v32, Lcom/vkontakte/android/PostViewActivity$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/vkontakte/android/PostViewActivity$1;-><init>(Lcom/vkontakte/android/PostViewActivity;I)V

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    add-int/lit8 v22, v22, 0x1

    .line 231
    .end local v11    # "idx":I
    .end local v21    # "photo":Lcom/vkontakte/android/Photo;
    :cond_14
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-gt v0, v1, :cond_15

    move-object/from16 v32, v7

    check-cast v32, Landroid/widget/ImageView;

    sget-object v33, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 234
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    instance-of v0, v7, Lcom/vkontakte/android/VideoAttachView;

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v32

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/high16 v33, -0x1000000

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v28, v7

    .line 242
    check-cast v28, Lcom/vkontakte/android/VideoAttachView;

    .line 243
    .local v28, "vav":Lcom/vkontakte/android/VideoAttachView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 244
    .local v30, "vsize":I
    new-instance v17, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 245
    .local v17, "p":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    sget-boolean v32, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v32, :cond_19

    const/16 v32, 0x280

    :goto_5
    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 246
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f400000    # 0.75f

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 247
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoAttachView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const v32, 0x7f060018

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v32

    new-instance v33, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v35, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 250
    .local v5, "a":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/ViewGroup;

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 252
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v29, "videoTitle":Landroid/widget/TextView;
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/high16 v32, 0x41600000    # 14.0f

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    const/16 v32, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    sget-object v32, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->setSingleLine()V

    .line 258
    sget-object v32, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 259
    const/high16 v32, 0x40e00000    # 7.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v33

    const/high16 v35, 0x40e00000    # 7.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    const/high16 v36, 0x41100000    # 9.0f

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v36

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    const/high16 v32, 0x41200000    # 10.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 261
    new-instance v23, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 262
    .local v23, "ppp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 263
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    new-instance v23, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .end local v23    # "ppp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 266
    .restart local v23    # "ppp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 267
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v30

    if-eq v0, v1, :cond_1a

    const/16 v32, 0x1

    :goto_6
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/PostViewActivity;->videoBottomPadding:Z

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/PostViewActivity;->videoBottomPadding:Z

    move/from16 v32, v0

    if-nez v32, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v38, 0x2

    move/from16 v0, v32

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    :cond_16
    const/high16 v32, 0x40e00000    # 7.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    :goto_7
    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600f3

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const-string v10, ""

    .line 272
    .local v10, "h":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "\n"

    const-string v35, "<br/>"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 273
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/ExTextView;

    invoke-static {v10}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/vkontakte/android/ExTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 275
    new-instance v31, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ExTextView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v31, "xv":Lcom/vkontakte/android/ExTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v33, v0

    check-cast v33, Landroid/view/ViewGroup;

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 277
    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 278
    const/high16 v32, 0x41400000    # 12.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    const/16 v33, 0x0

    const/high16 v35, 0x41400000    # 12.0f

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v35

    const/high16 v36, 0x40e00000    # 7.0f

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v36

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ExTextView;->setPadding(IIII)V

    .line 279
    invoke-virtual/range {v31 .. v31}, Lcom/vkontakte/android/ExTextView;->setSingleLine()V

    .line 280
    sget-object v32, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v31 .. v32}, Lcom/vkontakte/android/ExTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 281
    const/high16 v32, 0x41700000    # 15.0f

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/vkontakte/android/ExTextView;->setFadingEdgeLength(I)V

    .line 282
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "<font color=\'#AAAAAA\'>"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f0901ea

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " </font><a href=\'vkontakte://profile/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "</a>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    .local v24, "pppp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fa

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v5    # "a":Landroid/view/View;
    .end local v10    # "h":Ljava/lang/String;
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "p":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v23    # "ppp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v24    # "pppp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v28    # "vav":Lcom/vkontakte/android/VideoAttachView;
    .end local v29    # "videoTitle":Landroid/widget/TextView;
    .end local v30    # "vsize":I
    .end local v31    # "xv":Lcom/vkontakte/android/ExTextView;
    :cond_18
    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0600fb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 245
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17    # "p":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .restart local v28    # "vav":Lcom/vkontakte/android/VideoAttachView;
    .restart local v30    # "vsize":I
    :cond_19
    const/16 v32, 0x140

    goto/16 :goto_5

    .line 268
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "a":Landroid/view/View;
    .restart local v23    # "ppp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .restart local v29    # "videoTitle":Landroid/widget/TextView;
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 269
    :cond_1b
    const/16 v32, 0x0

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 1397
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_admin"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-nez v2, :cond_2

    .line 1398
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1399
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0b0005

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1400
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v2, :cond_1

    .line 1401
    const v2, 0x7f0601a2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1403
    :cond_1
    const/4 v1, 0x1

    .line 1405
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_2
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 1420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f06019e

    if-ne v1, v2, :cond_1

    .line 1421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1422
    const v2, 0x7f090030

    new-instance v3, Lcom/vkontakte/android/PostViewActivity$30;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PostViewActivity$30;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1427
    const v2, 0x7f090031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1428
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1429
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1439
    :cond_0
    :goto_0
    return v4

    .line 1430
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0601a2

    if-ne v1, v2, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, v1, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->editRepostComment(Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1436
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edit"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1437
    const/16 v1, 0x10e8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 1553
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 1554
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    if-nez v0, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$34;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$34;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1558
    const-wide/16 v2, 0x12c

    .line 1555
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, 0x7f0601a2

    .line 1410
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_1

    .line 1411
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 1415
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3840

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    .line 1526
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1562
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 1563
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 1565
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 1567
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 895
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    if-ne v0, p3, :cond_0

    .line 901
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 897
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    .line 898
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 899
    iput p3, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    .line 900
    iput p2, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 905
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 907
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 1572
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 862
    new-instance v0, Lcom/vkontakte/android/PostViewActivity$25;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PostViewActivity$25;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 866
    return-void
.end method
