.class public Lcom/vkontakte/android/PhotoViewerFragment;
.super Landroid/app/Fragment;
.source "PhotoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;,
        Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;
    }
.end annotation


# static fields
.field private static reusableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

.field private bitmapToSet:Landroid/graphics/Bitmap;

.field private bottomPadding:Landroid/view/View;

.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/view/View;

.field private currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

.field private imageSet:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private index:I

.field private infoRequest:Lcom/vkontakte/android/APIRequest;

.field private lastUpdated:J

.field private layoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

.field private loadingComments:Z

.field private photo:Lcom/vkontakte/android/Photo;

.field private photoInfo:Landroid/view/View;

.field private postedAnim:Ljava/lang/Runnable;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/PhotoViewerFragment;->reusableViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->lastUpdated:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    .line 67
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    .line 71
    new-instance v0, Lcom/vkontakte/android/PhotoViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoViewerFragment$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 79
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->lastUpdated:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    .line 67
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    .line 71
    new-instance v0, Lcom/vkontakte/android/PhotoViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoViewerFragment$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 79
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    .line 84
    iput p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->index:I

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoViewerFragment;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoViewerFragment;I)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment;->showCommentOptions(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoViewerFragment;I)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoViewerFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->adapter:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateList()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->loadingComments:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoViewerFragment;J)V
    .locals 0

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->lastUpdated:J

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->infoRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/PhotoViewerFragment;[Lcom/vkontakte/android/PhotoTag;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/PhotoViewerFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoViewerFragment;I)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment;->restoreComment(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoViewerFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->index:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->toggleControls()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment;->loadComments(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private deleteComment(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 590
    new-instance v0, Lcom/vkontakte/android/api/WallDeleteComment;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vkontakte/android/api/WallDeleteComment;-><init>(IIII)V

    .line 591
    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment$18;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDeleteComment;->setCallback(Lcom/vkontakte/android/api/WallDeleteComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 610
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 612
    return-void
.end method

.method private loadComments(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v5, 0x1

    .line 641
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->refreshDone()V

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->loadingComments:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    if-nez v0, :cond_2

    .line 706
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x0

    .line 644
    .local v7, "csize":I
    :goto_1
    const/4 v3, 0x0

    .line 649
    .local v3, "offset":I
    const/16 v6, 0xa

    .line 650
    .local v6, "count":I
    if-nez p1, :cond_3

    .line 651
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->nComments:I

    sub-int/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->nComments:I

    sub-int/2addr v0, v7

    sub-int v3, v0, v6

    .line 656
    :cond_3
    move v3, v7

    .line 658
    iput-boolean v5, p0, Lcom/vkontakte/android/PhotoViewerFragment;->loadingComments:Z

    .line 659
    new-instance v0, Lcom/vkontakte/android/api/WallGetComments;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    if-eqz p1, :cond_5

    const/4 v4, 0x5

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGetComments;-><init>(IIIII)V

    .line 660
    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment$20;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGetComments;->setCallback(Lcom/vkontakte/android/api/WallGetComments$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 705
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 643
    .end local v3    # "offset":I
    .end local v6    # "count":I
    .end local v7    # "csize":I
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_1

    .restart local v3    # "offset":I
    .restart local v6    # "count":I
    .restart local v7    # "csize":I
    :cond_5
    move v4, v6

    .line 659
    goto :goto_2
.end method

.method private restoreComment(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 615
    new-instance v0, Lcom/vkontakte/android/api/WallRestoreComment;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vkontakte/android/api/WallRestoreComment;-><init>(IIII)V

    .line 616
    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$19;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment$19;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallRestoreComment;->setCallback(Lcom/vkontakte/android/api/WallRestoreComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 636
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 638
    return-void
.end method

.method private showCommentOptions(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 411
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "is_admin"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v7, :cond_3

    move v0, v5

    .line 412
    .local v0, "canAdmin":Z
    :goto_0
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v7, v4, 0x2

    if-nez v0, :cond_0

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v8, :cond_4

    :cond_0
    move v4, v6

    :goto_1
    add-int/2addr v4, v7

    new-array v3, v4, [Ljava/lang/String;

    .line 413
    .local v3, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090038

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 415
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090125

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 416
    if-nez v0, :cond_1

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v7, :cond_2

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09006d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 417
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_5

    .line 420
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance v5, Lcom/vkontakte/android/PhotoViewerFragment$14;

    invoke-direct {v5, p0, v1, v0}, Lcom/vkontakte/android/PhotoViewerFragment$14;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/NewsComment;Z)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 447
    return-void

    .end local v0    # "canAdmin":Z
    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 411
    goto :goto_0

    .restart local v0    # "canAdmin":Z
    :cond_4
    move v4, v5

    .line 412
    goto :goto_1

    .line 418
    .restart local v2    # "i":I
    .restart local v3    # "items":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v2, 0x2

    if-nez v0, :cond_6

    iget v4, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v8, :cond_7

    :cond_6
    move v4, v6

    :goto_3
    add-int/2addr v7, v4

    iget-object v4, v1, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v7

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 418
    goto :goto_3
.end method

.method private toggleControls()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v6, 0x7f0600dd

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v2, :cond_2

    .line 451
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 452
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 453
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v3, 0x7f0600dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, "v1":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    new-instance v2, Lcom/vkontakte/android/PhotoViewerFragment$15;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/PhotoViewerFragment$15;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/view/View;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    .line 464
    const-wide/16 v6, 0x15e

    .line 458
    invoke-virtual {v1, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 482
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v3, 0x7f0600da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 483
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    .line 484
    return-void

    .line 466
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "v1":Landroid/view/View;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 467
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 468
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility()V

    .line 469
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v3, 0x7f0600dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 471
    .restart local v1    # "v1":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getScrollTop()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->postedAnim:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 481
    goto :goto_1
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->adapter:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerFragment$17;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->adapter:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public addComment(Lcom/vkontakte/android/NewsComment;)V
    .locals 2
    .param p1, "c"    # Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateList()V

    .line 497
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerFragment$16;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void
.end method

.method public displayImage(Landroid/graphics/Bitmap;ZI)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "animate"    # Z
    .param p3, "i"    # I

    .prologue
    .line 901
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display image, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->index:I

    if-eq p3, v0, :cond_0

    .line 903
    const-string v0, "vk"

    const-string v1, "photo index mismatch"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 911
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    .line 912
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 913
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    .line 914
    const-string v0, "vk"

    const-string v1, "getActivity==null"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/PhotoViewerFragment$23;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getScrollTop()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v0, v1

    .line 573
    .local v0, "top":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x2328

    goto :goto_0
.end method

.method public isImageLoaded()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    return v0
.end method

.method loadPhotoInfo()V
    .locals 9

    .prologue
    const v8, 0x7f0600d3

    const/4 v3, 0x0

    const-wide v6, -0x3f3e6c0000000000L    # -9000.0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 709
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->infoRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->infoRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 713
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    iput v4, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 715
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "var t=API.photos.getTags({owner_id: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "});"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 716
    const-string v4, "var c=API.photos.getComments({owner_id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count: 5, sort: \"desc\"});"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 717
    const-string v4, "var l=API.photos.getById({photos: \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", extended: 1});"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 718
    const-string v4, "var oi; var on; var op; var oid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; if(oid>0){ oi=API.users.get({uids:oid,fields:\"photo_rec,photo_medium_rec\"});"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 719
    const-string v4, "on=oi[0].first_name+\" \"+oi[0].last_name; op=oi[0]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    const-string v2, "photo_medium_rec"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    const-string v4, "else{ oi=API.groups.getById({gid:-oid,extended:1}); on=oi[0].name; op=oi[0]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    const-string v2, "photo_medium"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    const-string v4, "return {t: t, c: c, l:l[0].likes, d:l[0].text, date: l[0].created, on: on, op: op, cu: API.getProfiles({uids:c@.from_id,fields:\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    const-string v2, "photo_medium_rec"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\"})};"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "execCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v4, v2, Lcom/vkontakte/android/Photo;->lat:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v4, v2, Lcom/vkontakte/android/Photo;->lon:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_6

    const/4 v1, 0x1

    .line 724
    .local v1, "hasGeo":Z
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_7

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 725
    if-eqz v1, :cond_2

    .line 726
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v4, v4, Lcom/vkontakte/android/Photo;->lat:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v4, v4, Lcom/vkontakte/android/Photo;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/PhotoViewerFragment$21;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerFragment$21;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 743
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 745
    :cond_2
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "execute"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 746
    const-string v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 747
    new-instance v3, Lcom/vkontakte/android/PhotoViewerFragment$22;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerFragment$22;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 847
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 745
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->infoRequest:Lcom/vkontakte/android/APIRequest;

    .line 848
    return-void

    .line 719
    .end local v0    # "execCode":Ljava/lang/String;
    .end local v1    # "hasGeo":Z
    :cond_3
    const-string v2, "photo_rec"

    goto/16 :goto_0

    .line 720
    :cond_4
    const-string v2, "photo"

    goto/16 :goto_1

    .line 721
    :cond_5
    const-string v2, "photo_rec"

    goto/16 :goto_2

    .restart local v0    # "execCode":Ljava/lang/String;
    :cond_6
    move v1, v3

    .line 723
    goto :goto_3

    .line 724
    .restart local v1    # "hasGeo":Z
    :cond_7
    const/16 v3, 0x8

    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 528
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 529
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imageSet:Z

    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "isReused":Z
    sget-object v7, Lcom/vkontakte/android/PhotoViewerFragment;->reusableViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 99
    new-instance v4, Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/vkontakte/android/ui/PhotoCommentsListView;-><init>(Landroid/content/Context;Z)V

    .line 106
    .local v4, "list":Lcom/vkontakte/android/ui/PhotoCommentsListView;
    :goto_0
    if-eqz v3, :cond_a

    .line 107
    const v7, 0x7f0600d7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "cview":Landroid/view/View;
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 117
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rect "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    if-nez v3, :cond_b

    .line 120
    new-instance v7, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    .line 121
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    const v8, -0x151516

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    const v8, 0x49bed8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 124
    const v7, 0x7f030033

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    .line 125
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x49beda

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 126
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v7, v8}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 127
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 128
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setBackgroundColor(I)V

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setDividerHeight(I)V

    .line 131
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setVerticalScrollBarEnabled(Z)V

    .line 134
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setOffset(F)V

    .line 140
    :goto_2
    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v9, v10, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const v7, 0x7f0600da

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 142
    const v7, 0x7f0600da

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ZoomableImageView;->setOverscrollEnabled(Z)V

    .line 143
    new-instance v7, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)V

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->adapter:Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    .line 147
    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    .line 148
    if-nez v3, :cond_0

    .line 149
    const v7, 0x7f0600dd

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 150
    .local v6, "vvv":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    .end local v6    # "vvv":Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_c

    const v7, 0x49bed9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "gradientView":Landroid/view/View;
    :goto_3
    if-nez v3, :cond_1

    .line 154
    const v7, 0x7f020266

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    const v7, 0x49bed9

    invoke-virtual {v1, v7}, Landroid/view/View;->setId(I)V

    .line 156
    const v7, 0x7f0600d8

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0600d8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 157
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 159
    :cond_1
    new-instance v7, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/PhotoViewerFragment$CommentPhotosAdapter;)V

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 160
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$2;

    invoke-direct {v8, p0, v1}, Lcom/vkontakte/android/PhotoViewerFragment$2;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/view/View;)V

    iput-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 236
    const v7, 0x7f0600db

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const v7, 0x7f0600da

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 240
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$3;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v7, Lcom/vkontakte/android/PhotoViewerFragment$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoViewerFragment$4;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 265
    new-instance v7, Lcom/vkontakte/android/PhotoViewerFragment$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoViewerFragment$5;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    new-instance v7, Lcom/vkontakte/android/PhotoViewerFragment$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoViewerFragment$6;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 282
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$7;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$7;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$8;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$8;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$9;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$9;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    if-nez v3, :cond_2

    .line 312
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600ac

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020224

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 315
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$10;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$10;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$11;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$11;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$12;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$12;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ui/CircularProgressBar;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 347
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    .line 348
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600da

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600da

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 351
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bitmapToSet:Landroid/graphics/Bitmap;

    .line 354
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v7, v7, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v7, :cond_5

    .line 355
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->loadPhotoInfo()V

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanel()V

    .line 358
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v7, v7, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v7, :cond_7

    .line 359
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    .line 360
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateList()V

    .line 361
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0901ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " <font color=\'#4d6a8b\'>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v9, v9, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09020a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v13, v13, Lcom/vkontakte/android/Photo;->date:I

    invoke-static {v12, v13}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/LoadMoreCommentsView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 364
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/LoadMoreCommentsView;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v8, v8, Lcom/vkontakte/android/Photo;->nComments:I

    iget-object v9, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v9, v9, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 365
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->nComments:I

    iget-object v9, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v9, v9, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v7, v9

    if-lez v7, :cond_d

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v7, v7, Lcom/vkontakte/android/Photo;->lat:D

    const-wide v9, -0x3f3e6c0000000000L    # -9000.0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_e

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-wide v7, v7, Lcom/vkontakte/android/Photo;->lon:D

    const-wide v9, -0x3f3e6c0000000000L    # -9000.0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_e

    const/4 v2, 0x1

    .line 367
    .local v2, "hasGeo":Z
    :goto_5
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v2, :cond_f

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 368
    if-eqz v2, :cond_6

    .line 369
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v8, 0x7f0600d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v8, v8, Lcom/vkontakte/android/Photo;->placeAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v8, v8, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    iput-object v8, v7, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 381
    .end local v2    # "hasGeo":Z
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600da

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    new-instance v8, Lcom/vkontakte/android/PhotoViewerFragment$13;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerFragment$13;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ZoomableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    .line 393
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600dc

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 396
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v8, 0x7f0600e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_8
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    return-object v7

    .line 101
    .end local v0    # "cview":Landroid/view/View;
    .end local v1    # "gradientView":Landroid/view/View;
    .end local v4    # "list":Lcom/vkontakte/android/ui/PhotoCommentsListView;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_9
    sget-object v7, Lcom/vkontakte/android/PhotoViewerFragment;->reusableViews:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/PhotoCommentsListView;

    .line 103
    .restart local v4    # "list":Lcom/vkontakte/android/ui/PhotoCommentsListView;
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 109
    :cond_a
    const v7, 0x7f030034

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "cview":Landroid/view/View;
    goto/16 :goto_1

    .line 137
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_b
    const v7, 0x49bed8

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->bottomPadding:Landroid/view/View;

    .line 138
    const v7, 0x49beda

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    goto/16 :goto_2

    .line 152
    :cond_c
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 365
    .restart local v1    # "gradientView":Landroid/view/View;
    :cond_d
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 366
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 367
    .restart local v2    # "hasGeo":Z
    :cond_f
    const/16 v7, 0x8

    goto/16 :goto_6

    .line 393
    .end local v2    # "hasGeo":Z
    :cond_10
    const/16 v7, 0x8

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->layoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 521
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    .line 522
    sget-object v0, Lcom/vkontakte/android/PhotoViewerFragment;->reusableViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 524
    return-void

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 961
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 962
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerFragment$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerFragment$24;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    .line 969
    const-wide/16 v2, 0x12c

    .line 964
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 492
    return-void
.end method

.method public resetScroll()V
    .locals 4

    .prologue
    const v3, 0x7f0600dc

    const v2, 0x7f0600da

    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v0, v1, v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setSelectionFromTop(II)V

    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->translateY(I)V

    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->zoomOut()V

    .line 506
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 513
    return-void
.end method

.method public setInfoPanelVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const v1, 0x7f0600e2

    .line 566
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_0
    return-void

    .line 567
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setPhoto(Lcom/vkontakte/android/Photo;)V
    .locals 1
    .param p1, "p"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 581
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    .line 582
    iget-object v0, p1, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p1, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    .line 586
    :goto_1
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->updateList()V

    goto :goto_0

    .line 585
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->comments:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public setProgress(D)V
    .locals 2
    .param p1, "progr"    # D

    .prologue
    .line 940
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 942
    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    const v1, 0x7f0600d9

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showComments()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 953
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v0, v1

    .line 954
    .local v0, "scrollTop":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v1, v3, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->smoothScrollToPositionFromTop(II)V

    .line 958
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method

.method updateInfoPanel()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 852
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    if-nez v3, :cond_0

    .line 898
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 854
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->nComments:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->nTags:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v6, v6, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v6, v6, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v6, :cond_3

    const v6, 0x7f020157

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 859
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v6, v6, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v6, :cond_4

    const v6, -0x712e04

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nComments:I

    if-lez v3, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    if-lez v3, :cond_6

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v6, 0x7f0600e9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nTags:I

    if-lez v3, :cond_7

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nTags:I

    if-nez v3, :cond_9

    .line 866
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 867
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_8

    .line 868
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 887
    :goto_7
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v1, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 888
    .local v1, "nl":I
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v3, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 889
    :cond_1
    if-lez v1, :cond_d

    .line 890
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v4, 0x7f0600d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-boolean v4, v4, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v4, :cond_c

    const v4, 0x7f0a000a

    :goto_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_9
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v4, 0x7f0600d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 895
    .end local v1    # "nl":I
    :catch_0
    move-exception v2

    .line 896
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 857
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photo:Lcom/vkontakte/android/Photo;

    iget-object v6, v6, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    goto/16 :goto_1

    .line 858
    :cond_3
    const v6, 0x7f020156

    goto/16 :goto_2

    .line 859
    :cond_4
    const/4 v6, -0x1

    goto/16 :goto_3

    :cond_5
    move v3, v5

    .line 861
    goto/16 :goto_4

    :cond_6
    move v3, v5

    .line 862
    goto/16 :goto_5

    :cond_7
    move v3, v5

    .line 863
    goto/16 :goto_6

    .line 870
    :cond_8
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 871
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 872
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 873
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    .line 876
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_9
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 877
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_a

    .line 878
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 880
    :cond_a
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_7

    .line 884
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    goto/16 :goto_7

    .line 890
    .restart local v1    # "nl":I
    :cond_c
    const v4, 0x7f0a0009

    goto/16 :goto_8

    .line 892
    :cond_d
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v4, 0x7f0600d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 894
    :cond_e
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment;->photoInfo:Landroid/view/View;

    const v4, 0x7f0600d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateInfoPanelVisibility()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-nez v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v0, v2

    .line 545
    .local v0, "top":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2328

    .line 546
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v1, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 547
    .local v1, "visible":Z
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-nez v0, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v4, 0x7f0600e2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    .line 549
    :cond_5
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public updateInfoPanelVisibility(Z)V
    .locals 6
    .param p1, "updateActivity"    # Z

    .prologue
    const v5, 0x7f0600e2

    const/4 v3, 0x0

    .line 553
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v0, v2

    .line 555
    .local v0, "top":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->listView:Lcom/vkontakte/android/ui/PhotoCommentsListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2328

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v1, v2, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 557
    .local v1, "visible":Z
    if-eqz p1, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v2, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment;->contentView:Landroid/view/View;

    const v3, 0x7f0600da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    goto :goto_0

    .line 559
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    .line 561
    :cond_5
    const/4 v3, 0x4

    goto :goto_2
.end method
