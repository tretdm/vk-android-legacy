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

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->visibleViews:Ljava/util/Vector;

    .line 74
    iput-boolean v1, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    .line 78
    iput v2, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    iput v2, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    .line 85
    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->type:I

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->sendComment()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->showPostCommentActions(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->showPhotoCommentActions(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->activateCommentBar()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->like()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->retweet()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->deactivateCommentBar()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->likeComment(Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/PostViewActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    return v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/TitleBarButton;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/PostViewActivity;J)V
    .locals 0

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/vkontakte/android/PostViewActivity;->lastUpdated:J

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/PostViewActivity;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    return v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/PostViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->doRetweet()V

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->deletePost()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PostViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1096
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->cropMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PostViewActivity;I)V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity;->openPhotoList(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    return-object v0
.end method

.method private activateCommentBar()V
    .locals 7

    .prologue
    const v2, 0x7f060052

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 523
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 526
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$17;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 532
    const-wide/16 v2, 0x64

    .line 527
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 534
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_1
    return-void
.end method

.method private broadcastUpdate()V
    .locals 4

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 792
    const-string v1, "comments"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    const-string v1, "likes"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    const-string v1, "liked"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const-string v1, "retweeted"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method private cropMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1097
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    .line 1098
    .local v0, "m":I
    :goto_0
    const/4 v1, 0x0

    mul-int/lit8 v2, v0, 0x19

    mul-int/lit16 v3, v0, 0x12c

    mul-int/lit16 v4, v0, 0x82

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1097
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

    .line 538
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 539
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 540
    new-instance v2, Lcom/vkontakte/android/PostViewActivity$18;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/PostViewActivity$18;-><init>(Lcom/vkontakte/android/PostViewActivity;Landroid/os/Handler;)V

    .line 539
    invoke-virtual {v0, v1, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 548
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$19;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$19;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 554
    const-wide/16 v3, 0xfa

    .line 548
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToUid:I

    iput v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyTo:I

    .line 556
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->replyToName:Ljava/lang/String;

    .line 557
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_0
    return-void
.end method

.method private deleteComment(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 590
    new-instance v0, Lcom/vkontakte/android/api/WallDeleteComment;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vkontakte/android/api/WallDeleteComment;-><init>(IIII)V

    .line 591
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$21;-><init>(Lcom/vkontakte/android/PostViewActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 610
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 612
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 1102
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 1103
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$29;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$29;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1122
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1123
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1124
    return-void
.end method

.method private doRetweet()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    .line 859
    .local v6, "wasLiked":Z
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 862
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 863
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    .line 864
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZI)V

    .line 865
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$27;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/PostViewActivity$27;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 902
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 903
    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 563
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

    .line 800
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 802
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

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 804
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 809
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    .line 812
    .local v6, "wasLiked":Z
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 814
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 815
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 816
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->broadcastUpdate()V

    .line 818
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

    .line 819
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$25;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/PostViewActivity$25;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 818
    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 840
    return-void

    .line 806
    .end local v6    # "wasLiked":Z
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v3, v1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 813
    .restart local v6    # "wasLiked":Z
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 814
    goto :goto_2
.end method

.method private likeComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 6
    .param p1, "comm"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 572
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

    .line 573
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$20;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 586
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 587
    return-void

    .line 572
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v2, 0x1

    .line 615
    iget-boolean v0, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    if-eqz v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 616
    :cond_0
    if-eqz p1, :cond_5

    const/4 v7, 0x0

    .line 617
    .local v7, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 619
    .local v3, "offset":I
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v3, v0, -0xa

    .line 622
    :cond_1
    const/16 v6, 0xa

    .line 623
    .local v6, "count":I
    if-nez p1, :cond_2

    .line 624
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 625
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v7

    sub-int v3, v0, v6

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 629
    :cond_3
    move v3, v7

    .line 631
    :cond_4
    iput-boolean v2, p0, Lcom/vkontakte/android/PostViewActivity;->loadingComments:Z

    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OWNER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eqz p1, :cond_6

    const/16 v4, 0xa

    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIII)V

    .line 633
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PostViewActivity$22;-><init>(Lcom/vkontakte/android/PostViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 679
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 616
    .end local v3    # "offset":I
    .end local v6    # "count":I
    .end local v7    # "csize":I
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    goto :goto_1

    .restart local v3    # "offset":I
    .restart local v6    # "count":I
    .restart local v7    # "csize":I
    :cond_6
    move v4, v6

    .line 632
    goto :goto_2
.end method

.method private openPhotoList(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1139
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Lcom/vkontakte/android/Photo;

    .line 1140
    .local v2, "ph":[Lcom/vkontakte/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1141
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "photo_list"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1143
    const-string v3, "photo_index"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1144
    const-string v3, "photo"

    aget-object v4, v2, p1

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void

    .line 1140
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private retweet()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 844
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 846
    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 847
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 848
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$26;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$26;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private sendComment()V
    .locals 6

    .prologue
    const v4, 0x7f060052

    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 735
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 736
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

    .line 737
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$24;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/PostViewActivity$24;-><init>(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 785
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private showPhotoCommentActions(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 476
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

    .line 477
    .local v2, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 478
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090045

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 479
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090124

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 480
    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_3

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v6, :cond_4

    :cond_3
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 481
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_6

    .line 484
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 485
    new-instance v4, Lcom/vkontakte/android/PostViewActivity$16;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/PostViewActivity$16;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 519
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "items":[Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 476
    goto :goto_1

    .line 482
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

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v3, v4

    .line 482
    goto :goto_3
.end method

.method private showPostCommentActions(I)V
    .locals 8
    .param p1, "pos"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 420
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity;->comments:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 422
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

    .line 423
    .local v2, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090038

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 424
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090045

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 425
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090124

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 426
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v3, v0, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v3, :cond_6

    const v3, 0x7f090142

    :goto_2
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 427
    iget-boolean v3, p0, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    if-nez v3, :cond_3

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v6, :cond_4

    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 428
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 431
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v4, Lcom/vkontakte/android/PostViewActivity$15;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/PostViewActivity$15;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 470
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "items":[Ljava/lang/String;
    :cond_5
    move v3, v4

    .line 422
    goto :goto_1

    .line 426
    .restart local v2    # "items":[Ljava/lang/String;
    :cond_6
    const v3, 0x7f090141

    goto :goto_2

    .line 429
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

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v3, v4

    .line 429
    goto :goto_4
.end method

.method private updateLikes()V
    .locals 6

    .prologue
    const v2, 0x7f0600e2

    const v5, 0x7f0600e1

    const/16 v4, 0x8

    .line 691
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v0, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 692
    .local v0, "nl":I
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 693
    :cond_0
    if-lez v0, :cond_2

    .line 694
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

    .line 697
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->likeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f02015b

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 711
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity;->retweetBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f020162

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 712
    return-void

    .line 694
    :cond_1
    const v2, 0x7f0a0009

    goto :goto_0

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 698
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 710
    :cond_4
    const v1, 0x7f02015a

    goto :goto_3

    .line 711
    :cond_5
    const v1, 0x7f020160

    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/vkontakte/android/PostViewActivity;->hideKeyboard()V

    .line 568
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->finish()V

    .line 569
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1133
    iget-wide v0, p0, Lcom/vkontakte/android/PostViewActivity;->lastUpdated:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

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

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "entry"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "type"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/PostViewActivity;->type:I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const v22, 0x7f090006

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setTitle(I)V

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const v22, 0x7f090008

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setTitle(I)V

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 96
    new-instance v10, Landroid/content/Intent;

    const-class v22, Lcom/vkontakte/android/BoardTopicViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v10, "intent":Landroid/content/Intent;
    const-string v22, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v22, "tid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v22, "gid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x41a00000    # 20.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 101
    .local v15, "pages":I
    const-string v22, "offset"

    add-int/lit8 v23, v15, -0x1

    mul-int/lit8 v23, v23, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "is_admin"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_2
    const-string v22, "is_admin"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v15    # "pages":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->finish()V

    .line 417
    :cond_5
    :goto_0
    return-void

    .line 112
    :cond_6
    sget-object v22, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 113
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    const/high16 v23, 0x41c00000    # 24.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    sub-int v20, v22, v23

    .line 114
    .local v20, "tSize":I
    const/16 v22, 0x25c

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f2a7efa    # 0.666f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewsEntry;->processThumbs(II)V

    .line 118
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    new-instance v22, Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 121
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v12, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const v22, 0x7f03002d

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const v22, 0x7f030012

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->actionBar:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->setContentView(Landroid/view/View;)V

    .line 143
    const v22, 0x7f03002e

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const v23, -0xe0e0f

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "is_admin"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v22, v0

    sget v23, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    sget v23, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/PostViewActivity;->canAdmin:Z

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_c

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600df

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "\n"

    const-string v25, "<br/>"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600df

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600da

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600db

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600e0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/ui/FlowLayout;

    const/high16 v23, 0x40a00000    # 5.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-lez v22, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600e0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const/4 v14, 0x0

    .local v14, "nPhotos":I
    const/16 v18, 0x0

    .line 171
    .local v18, "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_7
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_d

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_e

    .line 201
    .end local v14    # "nPhotos":I
    .end local v18    # "pi":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600d8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$2;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600dd

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600df

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 214
    .local v19, "pt":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600dd

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$3;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600de

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_9

    .line 227
    const v22, 0x7f0600dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v22, 0x7f0600dc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/ExTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 232
    .end local v19    # "pt":Landroid/view/View;
    :cond_9
    const v22, 0x7f030021

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v22, v0

    const v23, 0x7f06009d

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/LoadMoreCommentsView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020206

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, -0x1

    const/high16 v25, 0x42200000    # 40.0f

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    invoke-direct/range {v23 .. v25}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->loadMoreView:Lcom/vkontakte/android/LoadMoreCommentsView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$4;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    .line 248
    new-instance v22, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct/range {v22 .. v22}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f060058

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$5;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f060052

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/EditText;

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$6;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentBar:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f060057

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020206

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    new-instance v22, Landroid/widget/ProgressBar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020206

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v22, 0x41f00000    # 30.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->commentsProgress:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    const v23, -0x141415

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$7;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$8;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    const v22, 0x7f0600d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->likeBtn:Landroid/widget/ImageView;

    .line 335
    const v22, 0x7f0600d7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->retweetBtn:Landroid/widget/ImageView;

    .line 336
    const v22, 0x7f0600d5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->commentBtn:Landroid/widget/ImageView;

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->updateLikes()V

    .line 340
    const v22, 0x7f0600d2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$9;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v22, 0x7f0600d6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$10;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v22, 0x7f0600d4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setEnabled(Z)V

    .line 354
    const v22, 0x7f0600d6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setEnabled(Z)V

    .line 356
    const v22, 0x7f0600d4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$11;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v22, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09001c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->addViewAtRight(Landroid/view/View;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    .local v11, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v22, 0x40400000    # 3.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 367
    const/high16 v22, 0x428c0000    # 70.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 368
    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/TitleBarButton;->setVisibility(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$12;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$12;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600e1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/vkontakte/android/PostViewActivity$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$13;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    sget-object v22, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PostViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "is_admin"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v22, v0

    sget v23, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    sget v23, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 392
    :cond_a
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 393
    .local v8, "btnMenu":Landroid/widget/ImageView;
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 394
    const v22, 0x7f0200c3

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v7, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x10

    move/from16 v0, v22

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 397
    const/high16 v22, 0x40400000    # 3.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 398
    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 399
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v22, Lcom/vkontakte/android/PostViewActivity$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PostViewActivity$14;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/PostViewActivity;->addViewAtRight(Landroid/view/View;)V

    goto/16 :goto_0

    .line 150
    .end local v7    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "btnMenu":Landroid/widget/ImageView;
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 156
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600df

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0600e0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 158
    .local v21, "v":Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .restart local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v22, 0x40e00000    # 7.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x40e00000    # 7.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/high16 v24, 0x40e00000    # 7.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    const/high16 v25, 0x40e00000    # 7.0f

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 171
    .end local v11    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "v":Landroid/view/View;
    .restart local v14    # "nPhotos":I
    .restart local v18    # "pi":I
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .local v5, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v5, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 172
    :cond_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 173
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    .line 174
    .local v6, "attView":Landroid/view/View;
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v22, v5

    .line 175
    check-cast v22, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 176
    new-instance v17, Lcom/vkontakte/android/Photo;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/Photo;-><init>()V

    .local v17, "photo":Lcom/vkontakte/android/Photo;
    move-object/from16 v22, v5

    .line 177
    check-cast v22, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object/from16 v22, v5

    .line 178
    check-cast v22, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object/from16 v22, v5

    .line 179
    check-cast v22, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Photo;->albumID:I

    move-object/from16 v22, v5

    .line 180
    check-cast v22, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Photo;->id:I

    .line 181
    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    iget v0, v5, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->e:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Photo;->date:I

    .line 183
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->photos:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 185
    move/from16 v9, v18

    .line 186
    .local v9, "idx":I
    new-instance v22, Lcom/vkontakte/android/PostViewActivity$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/vkontakte/android/PostViewActivity$1;-><init>(Lcom/vkontakte/android/PostViewActivity;I)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    add-int/lit8 v18, v18, 0x1

    .line 194
    .end local v9    # "idx":I
    .end local v17    # "photo":Lcom/vkontakte/android/Photo;
    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v14, v0, :cond_10

    move-object/from16 v22, v6

    check-cast v22, Landroid/widget/ImageView;

    sget-object v24, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    :cond_10
    invoke-static {v6}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PostViewActivity;->headerView:Landroid/view/View;

    move-object/from16 v22, v0

    const v24, 0x7f0600e0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 1074
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

    if-nez v2, :cond_1

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PostViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1076
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1077
    const/4 v1, 0x1

    .line 1079
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1084
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1085
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$28;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$28;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1090
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1091
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1093
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 1149
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 1150
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$30;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$30;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    .line 1153
    const-wide/16 v2, 0x12c

    .line 1150
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1154
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V

    .line 1129
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1157
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 1158
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 1159
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 1160
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 716
    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    if-ne v0, p3, :cond_0

    .line 722
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 718
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    .line 719
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 720
    iput p3, p0, Lcom/vkontakte/android/PostViewActivity;->viCount:I

    .line 721
    iput p2, p0, Lcom/vkontakte/android/PostViewActivity;->viStart:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 726
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 728
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 1165
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lcom/vkontakte/android/PostViewActivity$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PostViewActivity$23;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PostViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 687
    return-void
.end method
