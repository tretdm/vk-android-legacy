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
        Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;,
        Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;,
        Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoLoader;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_ALBUM_COVER:Ljava/lang/String; = "com.vkontakte.android.UPDATE_ALBUM_COVER"

.field public static final ACTION_UPDATE_PHOTO:Ljava/lang/String; = "com.vkontakte.android.UPDATE_PHOTO"

.field private static final SELECT_ALBUM_RESULT:I = 0x3ff

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

.field private docTitle:Ljava/lang/String;

.field private docUrl:Ljava/lang/String;

.field private liking:Z

.field private loaded:Z

.field private maxLikePhotos:I

.field private maxLikeVisible:I

.field private photoLoaded:Z

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

.field useBig:Z

.field useSmall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 107
    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    .line 108
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 109
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    .line 110
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 112
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    .line 113
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    .line 114
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 115
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useBig:Z

    .line 118
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    .line 120
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoLoaded:Z

    .line 92
    return-void

    :cond_1
    move v0, v2

    .line 112
    goto :goto_0

    :cond_2
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->like(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showTags()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->deletePhoto()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->editDescription()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->movePhoto()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->makeCover()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->updateBottomBar()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->doShowTags()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoLoaded:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/PhotoViewerFragment;ZZ)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadUsers()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    return-object v0
.end method

.method private broadcastUpdate()V
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 734
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v1, v1, Lcom/vkontakte/android/Photo;->isLiked:Z

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->nLikes:I

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v6, v5, Lcom/vkontakte/android/Photo;->isLiked:Z

    const/4 v7, 0x0

    move v5, v4

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V

    .line 744
    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 510
    new-instance v0, Lcom/vkontakte/android/api/PhotosDelete;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosDelete;-><init>(II)V

    .line 511
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosDelete;->setCallback(Lcom/vkontakte/android/api/PhotosDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 529
    return-void
.end method

.method private doShowTags()V
    .locals 4

    .prologue
    .line 598
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 599
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 602
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 604
    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$15;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$15;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 616
    return-void

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoTag;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private editDescription()V
    .locals 5

    .prologue
    .line 423
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 424
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 425
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 426
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 428
    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 429
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    const v3, 0x7f080353

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 432
    const v3, 0x7f0800a0

    new-instance v4, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 458
    const v3, 0x7f080041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 459
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 460
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 467
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 468
    return-void
.end method

.method private like(Z)V
    .locals 8
    .param p1, "liked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 683
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iput-boolean p1, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 684
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 686
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    if-eqz v0, :cond_1

    .line 731
    :goto_1
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_0

    .line 687
    :cond_1
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->liking:Z

    .line 688
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

    .line 689
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$18;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v1, -0x2328

    const/16 v4, 0x1f4

    .line 1071
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 1073
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    if-eqz v0, :cond_2

    .line 1074
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 1075
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$20;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1087
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1089
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-le v0, v1, :cond_3

    .line 1090
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIII)V

    .line 1091
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$21;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1107
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-ne v0, v1, :cond_4

    .line 1108
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dataLoading:Z

    .line 1109
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 1110
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$22;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1125
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1126
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    const/16 v1, -0x2329

    if-ne v0, v1, :cond_0

    .line 1127
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    .line 1128
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$23;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1144
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0
.end method

.method private loadPhotoInfo()V
    .locals 5

    .prologue
    .line 657
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v1, v1, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 659
    .local v0, "p":Lcom/vkontakte/android/Photo;
    new-instance v1, Lcom/vkontakte/android/api/PhotosGetInfo;

    iget v2, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    iget v3, v0, Lcom/vkontakte/android/Photo;->id:I

    iget-object v4, v0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetInfo;-><init>(IILjava/lang/String;)V

    .line 660
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$17;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PhotosGetInfo;->setCallback(Lcom/vkontakte/android/api/PhotosGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 678
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 680
    .end local v0    # "p":Lcom/vkontakte/android/Photo;
    :cond_0
    return-void
.end method

.method private loadUsers()V
    .locals 4

    .prologue
    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 639
    const-string v2, "vk"

    const-string v3, "LOAD USERS"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$16;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 654
    return-void

    .line 633
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 635
    .local v1, "p":Lcom/vkontakte/android/Photo;
    iget-object v3, v1, Lcom/vkontakte/android/Photo;->user:Lcom/vkontakte/android/UserProfile;

    if-nez v3, :cond_0

    iget v3, v1, Lcom/vkontakte/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    iget v3, v1, Lcom/vkontakte/android/Photo;->userID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeCover()V
    .locals 4

    .prologue
    .line 483
    new-instance v0, Lcom/vkontakte/android/api/PhotosMakeCover;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosMakeCover;-><init>(III)V

    .line 484
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$12;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosMakeCover;->setCallback(Lcom/vkontakte/android/api/PhotosMakeCover$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 506
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 507
    return-void
.end method

.method private movePhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select_album"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    const-string v2, "title"

    const v3, 0x7f080357

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    const-string v2, "only_upload"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 479
    const/16 v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    return-void
.end method

.method private savePhoto()V
    .locals 14

    .prologue
    const/16 v13, 0x78

    const/16 v10, 0x77

    const/16 v9, 0x79

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 532
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/temp_doc"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 534
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 535
    new-instance v3, Ljava/io/File;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docTitle:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 537
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f080310

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 571
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "VK"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 543
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_7

    .line 544
    const/4 v6, 0x0

    .line 545
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 546
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 554
    :goto_1
    if-eqz v6, :cond_0

    .line 555
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 556
    .local v5, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 557
    .local v4, "req":Landroid/app/DownloadManager$Request;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 559
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_3

    .line 560
    invoke-virtual {v4, v12}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 561
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 563
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "download"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 564
    .local v2, "mgr":Landroid/app/DownloadManager;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0

    .line 547
    .end local v2    # "mgr":Landroid/app/DownloadManager;
    .end local v4    # "req":Landroid/app/DownloadManager$Request;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    const/16 v8, 0x7a

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 548
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    const/16 v8, 0x7a

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 549
    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 550
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 551
    goto :goto_1

    .line 552
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v13}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 566
    .end local v6    # "url":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-virtual {v7, v9, v13}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v7

    iget-object v6, v7, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 567
    .restart local v6    # "url":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/ImageCache;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 568
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0800a5

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 569
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "image/jpeg"

    aput-object v10, v9, v11

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_0
.end method

.method private setBottomBarData(IIIZLjava/lang/String;)V
    .locals 4
    .param p1, "likes"    # I
    .param p2, "comments"    # I
    .param p3, "tags"    # I
    .param p4, "liked"    # Z
    .param p5, "descr"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f090129

    const v3, 0x7f09012b

    const/4 v2, 0x0

    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 1172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p5}, Lcom/vkontakte/android/Global;->unwrapMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p4, :cond_0

    const v1, 0x7f0201a2

    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1176
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

    .line 1177
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v1, 0x7f09012d

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

    .line 1178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v1, 0x7f09012f

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

    .line 1179
    return-void

    .line 1174
    :cond_0
    const v1, 0x7f0201a1

    goto :goto_0

    .line 1176
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 1177
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 1178
    :cond_3
    const-string v1, ""

    goto :goto_3
.end method

.method private showControls(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    if-eqz p1, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 753
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->id:I

    if-eqz v0, :cond_0

    .line 754
    if-eqz p2, :cond_3

    .line 755
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const/16 v2, 0x12c

    invoke-static {v0, p1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 759
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 760
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_1

    .line 757
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_4

    .line 760
    :cond_5
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private showEditDialog()V
    .locals 4

    .prologue
    .line 401
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    const v1, 0x7f080352

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 403
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f080353

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f080354

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f080355

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 420
    return-void
.end method

.method private showTags()V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->nTags:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetTags;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetTags;-><init>(IILjava/lang/String;)V

    .line 576
    new-instance v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetTags;->setCallback(Lcom/vkontakte/android/api/PhotosGetTags$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->doShowTags()V

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800e5

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

    .line 1151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-nez v0, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "photo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_1

    .line 1154
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

    .line 1156
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

    .line 1161
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

    .line 1162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkontakte/android/ui/PhotoView;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    .line 1168
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1166
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 765
    const/16 v1, 0x3ff

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 766
    const-string v1, "album"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 767
    .local v0, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    new-instance v1, Lcom/vkontakte/android/api/PhotosMove;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    iget v4, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/PhotosMove;-><init>(III)V

    .line 768
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$19;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$19;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PhotosMove;->setCallback(Lcom/vkontakte/android/api/PhotosMove$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 789
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 790
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 792
    .end local v0    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    return-void
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

    .line 125
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 127
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

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v11, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "all_uid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "all_uid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "total"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    .line 140
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "oid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    .line 141
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "total"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->total:I

    .line 142
    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aid:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->aoid:I

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->allUid:I

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 147
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

    .line 148
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    .line 202
    :goto_0
    const v2, 0x7f03006b

    invoke-static {p1, v2, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    .line 204
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 205
    new-instance v2, Lcom/vkontakte/android/ui/PhotoView;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/ui/PhotoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    .line 206
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PhotoView;->getOverlayView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/16 v8, 0x50

    invoke-direct {v6, v10, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setNavigationListener(Lcom/vkontakte/android/ui/PhotoView$NavigationListener;)V

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setDismissListener(Lcom/vkontakte/android/ui/PhotoView$DismissListener;)V

    .line 211
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/PhotoView;->setZoomListener(Lcom/vkontakte/android/ui/PhotoView$ZoomListener;)V

    .line 212
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo;

    .line 214
    .local v1, "photo":Lcom/vkontakte/android/Photo;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    sget-object v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    :goto_1
    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_2
    invoke-virtual {v5, v6, v2}, Lcom/vkontakte/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    .line 218
    .end local v1    # "photo":Lcom/vkontakte/android/Photo;
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 220
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v6, v6, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {v2, v5, v6}, Lcom/vkontakte/android/ui/PhotoView;->animateIn(Landroid/graphics/Rect;I)V

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;

    invoke-direct {v5, p0, v9}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/fragments/PhotoViewerFragment$PhotoAdapter;)V

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/PhotoView;->setAdapter(Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;)V

    .line 226
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

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 227
    :cond_7
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "position"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/PhotoView;->setPosition(I)V

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "position"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onPositionChanged(I)V

    .line 229
    sput-object v9, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    .line 230
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 231
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 235
    const-wide/16 v5, 0xc8

    .line 231
    invoke-virtual {v2, v3, v5, v6}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :goto_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadUsers()V

    .line 243
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f09012c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const v3, 0x7f09012e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    if-nez v2, :cond_8

    .line 287
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 291
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 292
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 294
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "bg_color"

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setBgColor(I)V

    .line 304
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->setHasOptionsMenu(Z)V

    .line 310
    return-void

    .line 149
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "shared_list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    sget-object v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
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

    .line 152
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    goto/16 :goto_0

    .line 153
    :cond_a
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "doc_url"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 154
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "doc_url"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "doc_title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docTitle:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v2, Lcom/vkontakte/android/Photo;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 158
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loaded:Z

    goto/16 :goto_0

    .line 160
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "list"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    .line 161
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

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "feed_entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 163
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v2, Lcom/vkontakte/android/api/GetFullPhotoList;

    invoke-direct {v2, v0}, Lcom/vkontakte/android/api/GetFullPhotoList;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 164
    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/api/GetFullPhotoList;->setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 200
    invoke-virtual {v2, p1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v1    # "photo":Lcom/vkontakte/android/Photo;
    :cond_c
    const/16 v2, 0x79

    const/16 v7, 0x78

    invoke-virtual {v1, v2, v7}, Lcom/vkontakte/android/Photo;->getImage(CC)Lcom/vkontakte/android/Photo$Image;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    move v2, v4

    goto/16 :goto_2

    .line 216
    .end local v1    # "photo":Lcom/vkontakte/android/Photo;
    :cond_e
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    sget-object v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->sharedThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v4}, Lcom/vkontakte/android/ui/PhotoView;->setThumb(Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_3

    .line 237
    :cond_f
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 238
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->setEnabled(Z)V

    .line 239
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
    .line 628
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v6, -0x7

    const/16 v5, -0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 314
    const v0, 0x7f090215

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->userID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-ne v0, v5, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 315
    const v0, 0x7f09020c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 316
    const v0, 0x7f090217

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->id:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 317
    const v0, 0x7f090027

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->id:I

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 318
    const v0, 0x7f090209

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->id:I

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 319
    const v0, 0x7f090218

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    const/4 v4, -0x6

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v0, v0, Lcom/vkontakte/android/Photo;->albumID:I

    if-eq v0, v5, :cond_8

    move v0, v2

    :goto_5
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 320
    const v0, 0x7f090219

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    if-eqz v3, :cond_9

    :goto_6
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 322
    const v0, 0x7f090216

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoLoaded:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 324
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 314
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 315
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 316
    goto :goto_2

    :cond_6
    move v0, v2

    .line 317
    goto :goto_3

    :cond_7
    move v0, v2

    .line 318
    goto :goto_4

    :cond_8
    move v0, v1

    .line 319
    goto :goto_5

    :cond_9
    move v1, v2

    .line 320
    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    if-eqz v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->dismissed:Z

    .line 1186
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 327
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090215

    if-ne v4, v5, :cond_0

    .line 328
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v4, v4, Lcom/vkontakte/android/Photo;->albumID:I

    const/4 v5, -0x7

    if-ne v4, v5, :cond_8

    .line 329
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->editDescription()V

    .line 333
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090216

    if-ne v4, v5, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->savePhoto()V

    .line 336
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f09020c

    if-ne v4, v5, :cond_2

    .line 337
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    const v5, 0x7f08007e

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 339
    const v5, 0x7f08022d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 340
    const v5, 0x7f08004e

    new-instance v6, Lcom/vkontakte/android/fragments/PhotoViewerFragment$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 347
    const v5, 0x7f08004f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 350
    :cond_2
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090027

    if-ne v4, v5, :cond_3

    .line 351
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

    .line 352
    .local v3, "ln":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 353
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0801cb

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 356
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v3    # "ln":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090209

    if-ne v4, v5, :cond_4

    .line 357
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 358
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 359
    iget-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    invoke-direct {v5, v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iput v9, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 361
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "post"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const-string v4, "msg"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 366
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090217

    if-ne v4, v5, :cond_5

    .line 367
    new-instance v4, Lcom/vkontakte/android/api/PhotosCopy;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v6, v6, Lcom/vkontakte/android/Photo;->id:I

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/api/PhotosCopy;-><init>(IILjava/lang/String;)V

    .line 368
    new-instance v5, Lcom/vkontakte/android/fragments/PhotoViewerFragment$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/PhotosCopy;->setCallback(Lcom/vkontakte/android/api/PhotosCopy$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 380
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 381
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 383
    :cond_5
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090218

    if-ne v4, v5, :cond_6

    .line 384
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_album"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->albumID:I

    if-ne v4, v5, :cond_9

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_album_oid"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    if-ne v4, v5, :cond_9

    .line 385
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 390
    :cond_6
    :goto_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090219

    if-ne v4, v5, :cond_7

    .line 391
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "itemID"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v4, "ownerID"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v4, "type"

    const-string v5, "photo"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 397
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    return v9

    .line 331
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showEditDialog()V

    goto/16 :goto_0

    .line 387
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vkontakte://vk.com/album"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v7, v7, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPositionChanged(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    const v5, 0x7f080088

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1049
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->docUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    .line 1053
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 1054
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1055
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

    .line 1059
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v0, :cond_3

    .line 1060
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadPhotoInfo()V

    .line 1062
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->updateBottomBar()V

    .line 1064
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

    .line 1065
    const-string v0, "vk"

    const-string v1, "LOAD MORE!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadMore()V

    goto/16 :goto_0

    .line 1055
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 1057
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

    .line 1191
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1192
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1193
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->curPhoto:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->viewClipTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1194
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->photoView:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/PhotoView;->setThumbBounds(Landroid/graphics/Rect;)V

    .line 1198
    .end local v0    # "r":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0, v3, v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->showControls(ZZ)V

    .line 1199
    return-void

    .line 1196
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
    const v2, 0x7f090129

    .line 1203
    cmpg-float v1, p1, p3

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 1204
    .local v0, "show":Z
    :goto_0
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    if-eq v0, v1, :cond_0

    .line 1205
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->descrVisible:Z

    .line 1206
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1207
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->buttonBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1209
    :cond_0
    return-void

    .line 1203
    .end local v0    # "show":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
