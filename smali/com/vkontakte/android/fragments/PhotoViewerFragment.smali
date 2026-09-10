.class public Lcom/vkontakte/android/fragments/PhotoViewerFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PhotoView$NavigationListener;
.implements Lcom/vkontakte/android/ui/PhotoView$DismissListener;
.implements Lcom/vkontakte/android/ui/PhotoView$ZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;,
        Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;
    }
.end annotation


# static fields
.field public static sharedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public static sharedThumb:Landroid/graphics/Bitmap;


# instance fields
.field private aid:I

.field private allUid:I

.field private aoid:I

.field private buttonBar:Landroid/view/View;

.field private contentView:Landroid/widget/FrameLayout;

.field private curPhoto:Lcom/vkontakte/android/Photo;

.field private dataLoading:Z

.field private descrVisible:Z

.field private dismissed:Z

.field private liking:Z

.field private loaded:Z

.field private maxLikePhotos:I

.field private maxLikeVisible:I

.field private photoView:Lcom/vkontakte/android/ui/PhotoView;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private total:I

.field useSmall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 81
    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    .line 82
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    .line 84
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 86
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    .line 89
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->deletePhoto()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->doShowTags()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->updateBottomBar()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PhotoViewerFragment;ZZ)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadUsers()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->like(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showTags()V

    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lcom/vkontakte/android/api/PhotosDelete;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosDelete;-><init>(II)V

    .line 325
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosDelete;->setCallback(Lcom/vkontakte/android/api/PhotosDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 343
    return-void
.end method

.method private doShowTags()V
    .locals 4

    .prologue
    .line 403
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 404
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 407
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    const v3, 0x7f0600c5

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 409
    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 421
    return-void

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoTag;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private like(Z)V
    .locals 8
    .param p1, "liked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iput-boolean p1, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 489
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 491
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    if-eqz v0, :cond_1

    .line 531
    :goto_1
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_0

    .line 492
    :cond_1
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    .line 493
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v1, Lcom/vkontakte/android/Photo;->id:I

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v7, v1, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 494
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x2328

    const/16 v4, 0x1f4

    .line 691
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 693
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    if-eqz v0, :cond_2

    .line 694
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 695
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$15;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 706
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 708
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-le v0, v1, :cond_3

    .line 709
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIII)V

    .line 710
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 723
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 725
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-ne v0, v1, :cond_4

    .line 726
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 727
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 728
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 742
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 743
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    const/16 v1, -0x2329

    if-ne v0, v1, :cond_0

    .line 744
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    .line 745
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 760
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0
.end method

.method private loadPhotoInfo()V
    .locals 5

    .prologue
    .line 462
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v1, v1, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 464
    .local v0, "p":Lcom/vkontakte/android/Photo;
    new-instance v1, Lcom/vkontakte/android/api/PhotosGetInfo;

    iget v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    iget v3, v0, Lcom/vkontakte/android/Photo;->id:I

    iget-object v4, v0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetInfo;-><init>(IILjava/lang/String;)V

    .line 465
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PhotosGetInfo;->setCallback(Lcom/vkontakte/android/api/PhotosGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 483
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 485
    .end local v0    # "p":Lcom/vkontakte/android/Photo;
    :cond_0
    return-void
.end method

.method private loadUsers()V
    .locals 4

    .prologue
    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 444
    const-string v2, "vk"

    const-string v3, "LOAD USERS"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$12;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$12;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 459
    return-void

    .line 438
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 440
    .local v1, "p":Lcom/vkontakte/android/Photo;
    iget-object v3, v1, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    if-nez v3, :cond_0

    iget v3, v1, Lcom/vkontakte/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget v3, v1, Lcom/vkontakte/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private savePhoto()V
    .locals 12

    .prologue
    const/16 v11, 0x78

    const/16 v8, 0x77

    const/16 v7, 0x79

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "VK"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 348
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_6

    .line 349
    const/4 v4, 0x0

    .line 350
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 351
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    iget-object v4, v5, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 359
    :goto_0
    if-nez v4, :cond_4

    .line 376
    :goto_1
    return-void

    .line 352
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    const/16 v6, 0x7a

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 353
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    const/16 v6, 0x7a

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    iget-object v4, v5, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 354
    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 355
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    iget-object v4, v5, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 356
    goto :goto_0

    .line 357
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v11}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    iget-object v4, v5, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_4
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 361
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 362
    .local v2, "req":Landroid/app/DownloadManager$Request;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 364
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_5

    .line 365
    invoke-virtual {v2, v10}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 366
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 368
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "download"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 369
    .local v1, "mgr":Landroid/app/DownloadManager;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_1

    .line 371
    .end local v1    # "mgr":Landroid/app/DownloadManager;
    .end local v2    # "req":Landroid/app/DownloadManager$Request;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "url":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v5, v7, v11}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    iget-object v4, v5, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 372
    .restart local v4    # "url":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/ImageCache;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f06008b

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "image/jpeg"

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_1
.end method

.method private setBottomBarData(IIIZLjava/lang/String;)V
    .locals 4
    .param p1, "likes"    # I
    .param p2, "comments"    # I
    .param p3, "tags"    # I
    .param p4, "liked"    # Z
    .param p5, "descr"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f080100

    const v3, 0x7f080102

    const/4 v2, 0x0

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 787
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p5}, Lcom/vkontakte/android/Global;->unwrapMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p4, :cond_0

    const v1, 0x7f020184

    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 790
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 791
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-lez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-lez p3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    return-void

    .line 789
    :cond_0
    const v1, 0x7f020183

    goto :goto_0

    .line 791
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 792
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 793
    :cond_3
    const-string v1, ""

    goto :goto_3
.end method

.method private showControls(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "anim"    # Z

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 535
    :cond_0
    if-eqz p1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 540
    :goto_1
    if-eqz p2, :cond_2

    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const/16 v1, 0x12c

    invoke-static {v0, p1, v1}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_1

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method private showTags()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->nTags:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetTags;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGetTags;-><init>(II)V

    .line 381
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetTags;->setCallback(Lcom/vkontakte/android/api/PhotosGetTags$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 393
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->doShowTags()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0600cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateBottomBar()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-nez v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v0, Lcom/vkontakte/android/Photo;->nComments:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v0, Lcom/vkontakte/android/Photo;->nTags:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v4, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v5, v0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->setBottomBarData(IIIZLjava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_1
    const-string v5, ""

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->setBottomBarData(IIIZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public animateOut(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "afterDone"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkontakte/android/ui/PhotoView;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    .line 783
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 781
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/16 v11, 0xe

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v11, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "all_uid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "all_uid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    .line 105
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "total"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "oid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "total"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 116
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    .line 164
    :goto_0
    const v2, 0x7f030054

    invoke-static {p1, v2, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    .line 166
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 167
    new-instance v2, Lcom/vkontakte/android/ui/PhotoView;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/ui/PhotoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PhotoView;->getOverlayView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/16 v8, 0x50

    invoke-direct {v6, v10, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setNavigationListener(Lcom/vkontakte/android/ui/PhotoView$NavigationListener;)V

    .line 172
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setDismissListener(Lcom/vkontakte/android/ui/PhotoView$DismissListener;)V

    .line 173
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setZoomListener(Lcom/vkontakte/android/ui/PhotoView$ZoomListener;)V

    .line 174
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 175
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 176
    .local v1, "photo":Lcom/vkontakte/android/Photo;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    sget-object v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    :goto_1
    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v6, v2}, Lcom/vkontakte/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    .line 180
    .end local v1    # "photo":Lcom/vkontakte/android/Photo;
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 182
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v6, v6, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {v2, v5, v6}, Lcom/vkontakte/android/ui/PhotoView;->animateIn(Landroid/graphics/Rect;I)V

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;

    invoke-direct {v5, p0, v9}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;)V

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/PhotoView;->setAdapter(Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;)V

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "shared_list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 189
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/PhotoView;->setPosition(I)V

    .line 190
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "position"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onPositionChanged(I)V

    .line 191
    sput-object v9, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 192
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 193
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 197
    const-wide/16 v5, 0xc8

    .line 193
    invoke-virtual {v2, v3, v5, v6}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :goto_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadUsers()V

    .line 205
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f080103

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f080101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 249
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 250
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 252
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "bg_color"

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setBgColor(I)V

    .line 261
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->setHasOptionsMenu(Z)V

    .line 262
    return-void

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "shared_list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    sget-object v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 120
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    goto/16 :goto_0

    .line 122
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 124
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 125
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v2, Lcom/vkontakte/android/api/GetFullPhotoList;

    invoke-direct {v2, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 126
    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/api/GetFullPhotoList;->setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 162
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 176
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v1    # "photo":Lcom/vkontakte/android/Photo;
    :cond_8
    const/16 v2, 0x79

    const/16 v7, 0x78

    invoke-virtual {v1, v2, v7}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    move v2, v4

    goto/16 :goto_2

    .line 178
    .end local v1    # "photo":Lcom/vkontakte/android/Photo;
    :cond_a
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    sget-object v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v4}, Lcom/vkontakte/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_3

    .line 199
    :cond_b
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 200
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setEnabled(Z)V

    .line 201
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setPosition(I)V

    goto/16 :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 434
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    const v0, 0x7f0e0006

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 266
    const v0, 0x7f080185

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 267
    const v0, 0x7f08018e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 266
    goto :goto_0

    :cond_1
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    .line 801
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 271
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08018d

    if-ne v4, v5, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->savePhoto()V

    .line 274
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080185

    if-ne v4, v5, :cond_1

    .line 275
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    const v5, 0x7f060063

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 277
    const v5, 0x7f060213

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 278
    const v5, 0x7f060034

    new-instance v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 285
    const v5, 0x7f060035

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 288
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08001d

    if-ne v4, v5, :cond_2

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://vk.com/photo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "ln":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 291
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0601b2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 294
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v3    # "ln":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080182

    if-ne v4, v5, :cond_3

    .line 295
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 296
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 297
    iget-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-direct {v5, v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iput v8, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 299
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "post"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    const-string v4, "msg"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 304
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08018e

    if-ne v4, v5, :cond_4

    .line 305
    new-instance v4, Lcom/vkontakte/android/api/PhotosCopy;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v6, v6, Lcom/vkontakte/android/Photo;->id:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/api/PhotosCopy;-><init>(IILjava/lang/String;)V

    .line 306
    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/PhotosCopy;->setCallback(Lcom/vkontakte/android/api/PhotosCopy$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 317
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 318
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 320
    :cond_4
    return v8
.end method

.method public onPositionChanged(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const v5, 0x7f06006e

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 673
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 674
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 675
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 679
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v0, :cond_3

    .line 680
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadPhotoInfo()V

    .line 682
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->updateBottomBar()V

    .line 684
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_0

    .line 685
    const-string v0, "vk"

    const-string v1, "LOAD MORE!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadMore()V

    goto :goto_0

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 677
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_3
.end method

.method public onPrepareDismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 807
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 808
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->viewClipTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 809
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/PhotoView;->setThumbBounds(Landroid/graphics/Rect;)V

    .line 813
    .end local v0    # "r":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 814
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->setThumbBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onZoomChanged(FFF)V
    .locals 3
    .param p1, "factor"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    const v2, 0x7f080100

    .line 818
    cmpg-float v1, p1, p3

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 819
    .local v0, "show":Z
    :goto_0
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    if-eq v0, v1, :cond_0

    .line 820
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 821
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 822
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 824
    :cond_0
    return-void

    .line 818
    .end local v0    # "show":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
