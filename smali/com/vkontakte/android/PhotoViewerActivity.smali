.class public Lcom/vkontakte/android/PhotoViewerActivity;
.super Landroid/app/Activity;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ZoomableImageView$OnNavListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;
    }
.end annotation


# static fields
.field private static final REQ_SEND_FRIEND:I = 0x90f

.field public static final RESULT_PHOTO_DELETED:I = 0x4

.field public static preview:Landroid/graphics/Bitmap;


# instance fields
.field cancel:Z

.field commentBar:Landroid/view/View;

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

.field controlsVisible:Z

.field curPhoto:I

.field currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

.field private dataLoading:Z

.field private ignoreNextVisibilityChange:Z

.field private infoRequest:Lcom/vkontakte/android/APIRequest;

.field infobar:Landroid/view/View;

.field isList:Z

.field private likeReq:Lcom/vkontakte/android/APIRequest;

.field list:[Lcom/vkontakte/android/Photo;

.field loaded:Z

.field private nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

.field private numLoaded:I

.field preloadedNextImage:Landroid/graphics/Bitmap;

.field private prevActivePage:I

.field prevImage:Landroid/graphics/Bitmap;

.field private showInlineComments:Z

.field private viewPager:Lcom/vkontakte/android/ui/ViewPager;

.field private wasPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    .line 82
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 84
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 85
    iput v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 86
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 87
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    .line 88
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 89
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    .line 90
    iput v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    .line 91
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 92
    new-instance v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct {v0}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 98
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->comments:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    .line 109
    iput v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevActivePage:I

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->viewPager:Lcom/vkontakte/android/ui/ViewPager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showControls()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->doDeletePhoto()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/graphics/Bitmap;ZI)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoViewerActivity;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoViewerActivity;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInlineCommentsPhoto()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity;->openComments(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoViewerActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevActivePage:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevActivePage:I

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->sendComment()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 1385
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerActivity;->like(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoViewerActivity;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 599
    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 600
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 601
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$16;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$16;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 607
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 609
    return-void
.end method

.method private displayImage(Landroid/graphics/Bitmap;ZI)V
    .locals 12
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "animate"    # Z
    .param p3, "idx"    # I

    .prologue
    const v11, 0x7f0600d9

    const/4 v10, 0x1

    const v9, 0x7f0600da

    const/4 v8, 0x0

    .line 785
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 786
    if-nez p1, :cond_0

    .line 787
    :try_start_0
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "bmp==null"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 789
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 790
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 791
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    const v5, 0x7f090197

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 795
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_0
    iget-boolean v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v5, :cond_3

    .line 796
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "page"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 797
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_1

    instance-of v5, v3, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoViewerFragment;->isImageLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 798
    check-cast v3, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v3    # "f":Landroid/app/Fragment;
    invoke-virtual {v3, p1, p2, p3}, Lcom/vkontakte/android/PhotoViewerFragment;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 800
    :cond_1
    iput-boolean v10, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    .line 855
    :cond_2
    :goto_0
    return-void

    .line 803
    :cond_3
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 804
    const v5, 0x7f0600db

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iput-boolean v10, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    .line 806
    if-eqz p2, :cond_4

    .line 807
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 808
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 809
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_4
    iget-boolean v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v5, :cond_7

    .line 812
    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v6, v6

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 813
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v5, v5

    if-nez v5, :cond_6

    .line 815
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->finish()V

    goto :goto_0

    .line 818
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v5, :cond_8

    .line 819
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadPhotoInfo()V

    .line 845
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 847
    :cond_7
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 850
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/PhotoViewerActivity$21;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/PhotoViewerActivity$21;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 853
    const-wide/16 v7, 0x1f4

    .line 850
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 821
    :cond_8
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    iput-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V

    goto :goto_1
.end method

.method private doDeletePhoto()V
    .locals 5

    .prologue
    .line 612
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 613
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 614
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 616
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.delete"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 617
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 618
    const-string v2, "pid"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 619
    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$17;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 634
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 635
    return-void
.end method

.method private hideControls()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x15e

    const v5, 0x7f0600dc

    const/4 v4, 0x0

    .line 703
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 705
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 706
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 707
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v2, :cond_3

    .line 708
    const v2, 0x7f0600dd

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 709
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 710
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 712
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 713
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 716
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$19;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerActivity$19;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    const v2, 0x7f0600da

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 729
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 730
    iput-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    .line 732
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setSystemUiVisibility"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 733
    const v3, 0x7f0600d7

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1057
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1058
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1059
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 1060
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1062
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1060
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1062
    goto :goto_0
.end method

.method private like(I)V
    .locals 5
    .param p1, "p"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1386
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1389
    const-string v0, "vk"

    const-string v3, "like req cancel"

    invoke-static {v0, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v3, "method"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "likes.add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iput-boolean v1, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 1392
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 1393
    const-string v0, "vk"

    const-string v3, "likes--"

    invoke-static {v0, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 1402
    :cond_0
    const-string v0, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLiked="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/vkontakte/android/Photo;->isLiked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 1407
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v3, v0, p1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 1408
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 1409
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_4

    const-string v0, "likes.add"

    :goto_3
    invoke-direct {v1, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1410
    const-string v0, "type"

    const-string v2, "photo"

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1411
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1412
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1413
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$33;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerActivity$33;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1409
    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 1440
    return-void

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 1396
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 1397
    const-string v0, "vk"

    const-string v3, "likes++"

    invoke-static {v0, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1407
    goto :goto_2

    .line 1409
    :cond_4
    const-string v0, "likes.delete"

    goto :goto_3
.end method

.method private loadImage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v3, :cond_0

    .line 740
    const v3, 0x7f0600da

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    const v3, 0x7f0600db

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :cond_0
    const/4 v1, 0x1

    .line 744
    .local v1, "needLoad":Z
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "page"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 746
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v3, :cond_1

    .line 747
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->isImageLoaded()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 750
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 751
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity$20;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 779
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 781
    :cond_2
    return-void

    .line 747
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadNextPage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 925
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 926
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_uid"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 927
    .local v1, "uid":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 928
    iput-boolean v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    .line 929
    new-instance v2, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    invoke-direct {v2, v1, v3, v4}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 930
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$24;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$24;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 955
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 957
    :cond_0
    if-ne v0, v6, :cond_1

    .line 958
    new-instance v2, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    invoke-direct {v2, v1, v3, v4}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 959
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$25;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$25;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 984
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 986
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 987
    new-instance v2, Lcom/vkontakte/android/api/FaveGetPhotos;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/api/FaveGetPhotos;-><init>(II)V

    .line 988
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$26;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$26;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/FaveGetPhotos;->setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1013
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1015
    :cond_2
    return-void
.end method

.method private loadPhotoInfo()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1124
    iget-boolean v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v6, :cond_1

    .line 1126
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "page"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 1127
    .local v5, "f":Landroid/app/Fragment;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v6, :cond_0

    .line 1128
    check-cast v5, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v5    # "f":Landroid/app/Fragment;
    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoViewerFragment;->loadPhotoInfo()V

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v6, :cond_2

    .line 1133
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1136
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/vkontakte/android/Photo;->ownerID:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v6, v6, v7

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    iput v7, v6, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 1138
    :cond_3
    const-string v4, ""

    .line 1139
    .local v4, "execCode":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_4

    iget-boolean v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v6, :cond_7

    .line 1140
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "var t=API.photos.getTags({owner_id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1141
    const-string v7, "var c=API.photos.getComments({owner_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1142
    const-string v7, "var l=API.photos.getById({photos: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", extended: 1});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1143
    const-string v7, "var oi; var on; var op; if(l[0].owner_id>0){ oi=API.users.get({uids:l[0].owner_id,fields:\"photo_rec,photo_medium_rec\"});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1144
    const-string v7, "on=oi[0].first_name+\" \"+oi[0].last_name; op=oi[0]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    const-string v6, "photo_medium_rec"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1145
    const-string v7, "else{ oi=API.groups.getById({gid:-l[0].owner_id,extended:1}); on=oi[0].name; op=oi[0]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    const-string v6, "photo_medium"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1146
    const-string v7, "return {t: t, c: c[0], l:l[0].likes, d:l[0].text, date: l[0].created, on: on, op: op};"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1157
    :goto_3
    const-wide/16 v0, 0x0

    .line 1193
    .local v0, "_animTime":J
    move-wide v2, v0

    .line 1194
    .local v2, "animStartTime":J
    new-instance v6, Lcom/vkontakte/android/APIRequest;

    const-string v7, "execute"

    invoke-direct {v6, v7}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1195
    const-string v7, "code"

    invoke-virtual {v6, v7, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 1196
    new-instance v7, Lcom/vkontakte/android/PhotoViewerActivity$28;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoViewerActivity$28;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 1282
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 1194
    iput-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1144
    .end local v0    # "_animTime":J
    .end local v2    # "animStartTime":J
    :cond_5
    const-string v6, "photo_rec"

    goto :goto_1

    .line 1145
    :cond_6
    const-string v6, "photo"

    goto :goto_2

    .line 1148
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "var t=API.photos.getTags({owner_id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1149
    const-string v7, "var c=API.photos.getComments({owner_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count: 5, sort: \"desc\"});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1150
    const-string v7, "var l=API.photos.getById({photos: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", extended: 1});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1151
    const-string v7, "var oi; var on; var op; if(l[0].owner_id>0){ oi=API.users.get({uids:l[0].owner_id,fields:\"photo_rec,photo_medium_rec\"});"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1152
    const-string v7, "on=oi[0].first_name+\" \"+oi[0].last_name; op=oi[0]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    const-string v6, "photo_medium_rec"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1153
    const-string v7, "else{ oi=API.groups.getById({gid:-l[0].owner_id,extended:1}); on=oi[0].name; op=oi[0]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_9

    const-string v6, "photo_medium"

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1154
    const-string v7, "return {t: t, c: c, l:l[0].likes, d:l[0].text, date: l[0].created, on: on, op: op, cu: API.getProfiles({uids:c@.from_id,fields:\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    const-string v6, "photo_medium_rec"

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"})};"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1152
    :cond_8
    const-string v6, "photo_rec"

    goto :goto_4

    .line 1153
    :cond_9
    const-string v6, "photo"

    goto :goto_5

    .line 1154
    :cond_a
    const-string v6, "photo_rec"

    goto :goto_6
.end method

.method private openComments(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "userphoto"    # Ljava/lang/String;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v0, v1

    .line 1367
    .local v7, "p":Lcom/vkontakte/android/Photo;
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1368
    .local v6, "intent":Landroid/content/Intent;
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 1369
    .local v8, "pe":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x1

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 1370
    iget-object v0, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 1371
    iget-object v9, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v1, v7, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    iget v4, v7, Lcom/vkontakte/android/Photo;->id:I

    iget v5, v7, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget v0, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 1373
    iget v0, v7, Lcom/vkontakte/android/Photo;->id:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 1374
    iget v0, v7, Lcom/vkontakte/android/Photo;->date:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 1375
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Lcom/vkontakte/android/Photo;->date:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 1376
    iput-object p1, v8, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 1377
    iput-object p2, v8, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 1378
    iget v0, v7, Lcom/vkontakte/android/Photo;->nLikes:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1379
    iget-boolean v0, v7, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1380
    :cond_0
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1381
    const-string v0, "entry"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1383
    return-void

    .line 1370
    :cond_1
    iget-object v0, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private preloadNextImage()V
    .locals 3

    .prologue
    .line 1028
    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v1, 0x1

    .line 1029
    .local v0, "pl":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1054
    :cond_1
    :goto_0
    return-void

    .line 1031
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isWifi()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$27;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$27;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1053
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private savePhoto()V
    .locals 2

    .prologue
    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$18;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 661
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 662
    return-void
.end method

.method private sendComment()V
    .locals 6

    .prologue
    const v2, 0x7f060058

    const/4 v4, 0x0

    .line 1458
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1462
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    :goto_0
    return-void

    .line 1463
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/WallAddComment;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v5

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallAddComment;-><init>(IILjava/lang/String;II)V

    .line 1464
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$34;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity$34;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallAddComment;->setCallback(Lcom/vkontakte/android/api/WallAddComment$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1504
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private sendPhoto()V
    .locals 3

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    const/16 v1, 0x90f

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    return-void
.end method

.method private showControls()V
    .locals 8

    .prologue
    const v5, 0x7f0600dc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 671
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 673
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 674
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 675
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v3, :cond_4

    .line 677
    const v3, 0x7f0600dd

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 679
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "page"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 683
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v3, :cond_3

    .line 684
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-virtual {v1, v7}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    .line 686
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 688
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    const v3, 0x7f0600da

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 690
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 691
    iput-boolean v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    .line 693
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "setSystemUiVisibility"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 694
    const v4, 0x7f0600d7

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 695
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private updateInlineCommentsPhoto()V
    .locals 4

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1019
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1020
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->isImageLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1021
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->setPhoto(Lcom/vkontakte/android/Photo;)V

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->viewPager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/ViewPager;->setLoopBack(Z)V

    .line 1025
    return-void

    .line 1024
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method likeCurrent()V
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->like(I)V

    .line 1287
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1443
    const/16 v4, 0x90f

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 1444
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Aphoto"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "attID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    const-string v4, "profile"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 1448
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1449
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "peerID"

    iget v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1450
    const-string v4, "title"

    iget-object v5, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1451
    const-string v4, "photo"

    iget-object v5, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    const-string v4, "attachments"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1453
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1455
    .end local v0    # "attID":Ljava/lang/String;
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 508
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 509
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "photo"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "url":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/Window;->setFormat(I)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x400

    const/16 v15, 0x400

    invoke-virtual {v13, v14, v15}, Landroid/view/Window;->setFlags(II)V

    .line 120
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->requestWindowFeature(I)Z

    .line 122
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xd

    if-lt v13, v14, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "hide_bottombar"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    .line 125
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_1

    .line 126
    const v13, 0x7f030034

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->setContentView(I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "descr"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 129
    const v13, 0x7f0600e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "descr"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    const v13, 0x7f0600da

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "photo_list"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "photo_list"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 144
    .local v1, "_list":[Landroid/os/Parcelable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "list_total"

    array-length v15, v1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    new-array v13, v13, [Lcom/vkontakte/android/Photo;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 145
    array-length v13, v1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    .line 146
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    const/16 v16, 0x0

    array-length v13, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v13, v13

    :goto_1
    move/from16 v0, v16

    invoke-static {v1, v14, v15, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "photo_index"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 149
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_3

    .line 150
    const v13, 0x7f0600da

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    .line 151
    .local v7, "iv":Lcom/vkontakte/android/ZoomableImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_3

    .line 152
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/vkontakte/android/ZoomableImageView;->setIsList(Z)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "incomplete"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v13, :cond_16

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "incomplete"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v7, v13}, Lcom/vkontakte/android/ZoomableImageView;->setCanGoBack(Z)V

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/vkontakte/android/ZoomableImageView;->setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V

    .line 157
    .end local v7    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 159
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_4

    .line 160
    const v13, 0x7f0600de

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09007f

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-gez v13, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 163
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v14, v14

    if-lt v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v13, v13, v14

    iget-object v11, v13, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_7

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadNextPage()V

    .line 170
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    .line 173
    .end local v1    # "_list":[Landroid/os/Parcelable;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "feed_entry"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "feed_entry"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 175
    .local v4, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v13, Lcom/vkontakte/android/api/GetFullPhotoList;

    invoke-direct {v13, v4}, Lcom/vkontakte/android/api/GetFullPhotoList;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 176
    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$2;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/api/GetFullPhotoList;->setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 219
    .end local v4    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v13, :cond_b

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "photo_index"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 221
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v6, "fl":Landroid/widget/FrameLayout;
    new-instance v8, Lcom/vkontakte/android/ui/ViewPager;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    .line 224
    .local v8, "pager":Lcom/vkontakte/android/ui/ViewPager;
    const v13, 0x1e21c

    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setId(I)V

    .line 225
    new-instance v13, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/PhotoViewerActivity$PhotoPagerAdapter;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 226
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v13, v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_17

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setLoop(Z)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "incomplete"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setLoopBack(Z)V

    .line 229
    const/high16 v13, -0x1000000

    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setBackgroundColor(I)V

    .line 230
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/vkontakte/android/PhotoViewerActivity;->viewPager:Lcom/vkontakte/android/ui/ViewPager;

    .line 231
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v13, Lcom/vkontakte/android/PhotoViewerActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/PhotoViewerActivity$3;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v8, v13}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 304
    const v13, 0x7f030015

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x50

    invoke-direct/range {v14 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v14, 0x7f060060

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$4;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v14, 0x7f060058

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$5;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v14, 0x7f06005f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020224

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    const v13, 0x7f030034

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 335
    .local v12, "vv":Landroid/view/View;
    const v13, 0x7f0600dd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 336
    .local v10, "titlebar":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 337
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 338
    const v13, 0x7f0600e2

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v13, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    const/high16 v16, 0x423c0000    # 47.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    const/16 v17, 0x50

    invoke-direct/range {v14 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->setContentView(Landroid/view/View;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v13, :cond_b

    .line 347
    const v13, 0x7f0600de

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09007f

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .end local v6    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "pager":Lcom/vkontakte/android/ui/ViewPager;
    .end local v10    # "titlebar":Landroid/view/View;
    .end local v12    # "vv":Landroid/view/View;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "feed_entry"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v13, :cond_19

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v13, :cond_c

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_c
    const v13, 0x7f0600dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v14, 0x460ca000    # 9000.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 361
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v13, :cond_d

    const v13, 0x7f0600e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1c

    .line 362
    :cond_d
    const v13, 0x7f0600e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$6;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v13, 0x7f0600e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$7;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const v13, 0x7f0600e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$8;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_f

    .line 391
    const v13, 0x7f0600dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v13, :cond_1a

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 392
    const v13, 0x7f0600da

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/ZoomableImageView;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 394
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "hide_bottombar"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 395
    const v13, 0x7f0600e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1b

    .line 396
    const v13, 0x7f0600e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_f
    :goto_7
    const v13, 0x7f0600dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$12;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    sget-object v13, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_10

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$13;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_10
    sget-object v13, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_11

    .line 454
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 455
    .local v3, "btnMenu":Landroid/widget/ImageView;
    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 456
    const v13, 0x7f0200c6

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v2, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v2, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0x10

    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 459
    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 461
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v13, Lcom/vkontakte/android/PhotoViewerActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/PhotoViewerActivity$14;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const v13, 0x7f0600e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 481
    .end local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "btnMenu":Landroid/widget/ImageView;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "thumb"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "thumb"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    .line 483
    .local v9, "pb":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_1e

    .line 484
    const v13, 0x7f0600db

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 485
    if-eqz v9, :cond_1d

    .line 486
    const v13, 0x7f0600d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    check-cast v9, Landroid/graphics/Bitmap;

    .end local v9    # "pb":Landroid/os/Parcelable;
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v13, :cond_13

    .line 500
    const v13, 0x7f0600d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 501
    :cond_13
    return-void

    .line 122
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v1    # "_list":[Landroid/os/Parcelable;
    :cond_15
    array-length v13, v1

    goto/16 :goto_1

    .line 153
    .restart local v7    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_16
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 227
    .end local v1    # "_list":[Landroid/os/Parcelable;
    .end local v7    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    .restart local v6    # "fl":Landroid/widget/FrameLayout;
    .restart local v8    # "pager":Lcom/vkontakte/android/ui/ViewPager;
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 228
    :cond_18
    const/4 v13, 0x1

    goto/16 :goto_4

    .line 357
    .end local v6    # "fl":Landroid/widget/FrameLayout;
    .end local v8    # "pager":Lcom/vkontakte/android/ui/ViewPager;
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 391
    :cond_1a
    const/16 v13, 0x8

    goto/16 :goto_6

    .line 398
    :cond_1b
    const v13, 0x7f0600e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 402
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v13, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    const v14, 0x7f0600e8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$9;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v13, 0x7f0600e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$10;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const v13, 0x7f0600e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/PhotoViewerActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/PhotoViewerActivity$11;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 488
    .restart local v9    # "pb":Landroid/os/Parcelable;
    :cond_1d
    const v13, 0x7f0600d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    sget-object v14, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 489
    const/4 v13, 0x0

    sput-object v13, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 492
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "page"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 493
    .local v5, "f":Landroid/app/Fragment;
    if-eqz v5, :cond_12

    instance-of v13, v5, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v13, :cond_12

    .line 494
    check-cast v5, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v5    # "f":Landroid/app/Fragment;
    if-eqz v9, :cond_1f

    check-cast v9, Landroid/graphics/Bitmap;

    .end local v9    # "pb":Landroid/os/Parcelable;
    :goto_9
    invoke-virtual {v5, v9}, Lcom/vkontakte/android/PhotoViewerFragment;->setThumb(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .restart local v9    # "pb":Landroid/os/Parcelable;
    :cond_1f
    sget-object v9, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    goto :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 560
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 563
    :goto_0
    return v1

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 562
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 563
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 512
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    .line 515
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v0, :cond_0

    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 516
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const v2, 0x7f0600da

    const/4 v1, 0x1

    .line 543
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 544
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->navigateNext()V

    :cond_0
    move v0, v1

    .line 555
    :goto_0
    return v0

    .line 550
    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    .line 551
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->navigatePrev()V

    :cond_2
    move v0, v1

    .line 553
    goto :goto_0

    .line 555
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNavNext()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const v7, 0x7f0600da

    const/4 v1, 0x0

    .line 859
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 860
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$22;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 862
    const-wide/16 v2, 0x64

    .line 860
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 886
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->getPrevImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    .line 866
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 867
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iput v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 870
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    .line 875
    :goto_1
    const v0, 0x7f0600e1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    const v0, 0x7f0600de

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 879
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadNextPage()V

    .line 882
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v0, :cond_4

    .line 883
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "incomplete"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v3, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "incomplete"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setCanGoBack(Z)V

    .line 885
    :cond_4
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    goto/16 :goto_0

    .line 872
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v0, v1, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 883
    goto :goto_2
.end method

.method public onNavPrev()V
    .locals 10

    .prologue
    const v9, 0x7f0600da

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ZoomableImageView;->getNextImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 891
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 892
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 893
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    iput v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 894
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 895
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v2, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    .line 900
    :goto_0
    const v2, 0x7f0600e1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const v2, 0x7f0600de

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v2, -0x1

    .line 904
    .local v0, "_prevIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 905
    :cond_2
    move v1, v0

    .line 906
    .local v1, "prevIndex":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/PhotoViewerActivity$23;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$23;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 918
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 921
    :cond_3
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "incomplete"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v5, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "incomplete"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_1
    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ZoomableImageView;->setCanGoBack(Z)V

    .line 922
    return-void

    .line 897
    .end local v0    # "_prevIndex":I
    .end local v1    # "prevIndex":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v2, v3, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;ZI)V

    .line 898
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .restart local v0    # "_prevIndex":I
    .restart local v1    # "prevIndex":I
    :cond_6
    move v3, v4

    .line 921
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 576
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 587
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 578
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->savePhoto()V

    goto :goto_0

    .line 581
    :pswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->deletePhoto()V

    goto :goto_0

    .line 584
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->sendPhoto()V

    goto :goto_0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x7f06019f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 521
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v0, :cond_0

    .line 522
    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$15;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 527
    const-wide/16 v2, 0x12c

    .line 522
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 529
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    const v2, 0x7f0601a1

    :try_start_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-le v2, v4, :cond_0

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v4

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 568
    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    move v0, v1

    .line 571
    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 533
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method showComments()V
    .locals 5

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1325
    :cond_0
    new-instance v2, Lcom/vkontakte/android/api/GetUserNameAndPhoto;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;-><init>(I)V

    .line 1326
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$30;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerActivity$30;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->setCallback(Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1336
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1337
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1363
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v2, :cond_2

    .line 1340
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->ownerPhoto:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->openComments(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1344
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1345
    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$31;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$31;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1351
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$32;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$32;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V

    .line 1360
    .local v1, "r":Ljava/lang/Runnable;
    const v2, 0x7f0600d7

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method showTags()V
    .locals 5

    .prologue
    .line 1290
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget-object v0, v3, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 1291
    .local v0, "currentPhotoTags":[Lcom/vkontakte/android/PhotoTag;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 1292
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 1293
    .local v2, "usernames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 1296
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1297
    new-instance v4, Lcom/vkontakte/android/PhotoViewerActivity$29;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$29;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;[Lcom/vkontakte/android/PhotoTag;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1308
    const v4, 0x7f0900e6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1309
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1313
    .end local v1    # "i":I
    .end local v2    # "usernames":[Ljava/lang/String;
    :goto_1
    return-void

    .line 1294
    .restart local v1    # "i":I
    .restart local v2    # "usernames":[Ljava/lang/String;
    :cond_0
    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "i":I
    .end local v2    # "usernames":[Ljava/lang/String;
    :cond_1
    const v3, 0x7f0900ee

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method toggleControls()V
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->hideControls()V

    .line 667
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 668
    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showControls()V

    goto :goto_0

    .line 667
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method updateInfoPanel()V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1066
    iget-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "page"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1068
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v4, :cond_0

    .line 1069
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanel()V

    .line 1075
    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    .line 1077
    .local v1, "f":Landroid/view/View;
    :goto_0
    iget-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-nez v4, :cond_1

    const v4, 0x7f0600dd

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1078
    :cond_1
    if-eqz v1, :cond_3

    .line 1079
    const v4, 0x7f0600e7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v9, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/vkontakte/android/Photo;->nComments:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    const v4, 0x7f0600e5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v9, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const v4, 0x7f0600e9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v9, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/vkontakte/android/Photo;->nTags:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    const v4, 0x7f0600e4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v7, :cond_5

    const v7, 0x7f020157

    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1083
    const v4, 0x7f0600e5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget-boolean v7, v7, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v7, :cond_6

    const v7, -0x712e04

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1085
    const v4, 0x7f0600e7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vkontakte/android/Photo;->nComments:I

    if-lez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    const v4, 0x7f0600e5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vkontakte/android/Photo;->nLikes:I

    if-lez v4, :cond_8

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    const v4, 0x7f0600e9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v8

    iget v4, v4, Lcom/vkontakte/android/Photo;->nTags:I

    if-lez v4, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/vkontakte/android/Photo;->nTags:I

    if-nez v4, :cond_b

    .line 1090
    const v4, 0x7f0600e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1091
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a

    .line 1092
    const v4, 0x7f0600e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1108
    :goto_6
    iget-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->showInlineComments:Z

    if-nez v4, :cond_3

    .line 1109
    const v4, 0x7f0600e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v5, :cond_d

    const-string v5, ""

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v2, v4, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 1111
    .local v2, "nl":I
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 1112
    :cond_2
    if-lez v2, :cond_f

    .line 1113
    const v4, 0x7f0600d2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v5, :cond_e

    const v5, 0x7f0a000a

    :goto_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :goto_9
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/vkontakte/android/Photo;->nLikes:I

    if-nez v4, :cond_10

    const v4, 0x7f0600d1

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    .end local v1    # "f":Landroid/view/View;
    .end local v2    # "nl":I
    :cond_3
    :goto_a
    return-void

    .line 1076
    :cond_4
    const v4, 0x7f0600d7

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "f":Landroid/view/View;
    goto/16 :goto_0

    .line 1082
    :cond_5
    const v7, 0x7f020156

    goto/16 :goto_1

    .line 1083
    :cond_6
    const/4 v7, -0x1

    goto/16 :goto_2

    :cond_7
    move v4, v6

    .line 1085
    goto/16 :goto_3

    :cond_8
    move v4, v6

    .line 1086
    goto/16 :goto_4

    :cond_9
    move v4, v6

    .line 1087
    goto/16 :goto_5

    .line 1094
    :cond_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1095
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1096
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1097
    const v4, 0x7f0600e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 1120
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "f":Landroid/view/View;
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1100
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v1    # "f":Landroid/view/View;
    :cond_b
    const v4, 0x7f0600e8

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1101
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_c

    .line 1102
    const v4, 0x7f0600e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    .line 1104
    :cond_c
    const v4, 0x7f0600e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    goto/16 :goto_6

    .line 1109
    :cond_d
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    goto/16 :goto_7

    .line 1113
    .restart local v2    # "nl":I
    :cond_e
    const v5, 0x7f0a0009

    goto/16 :goto_8

    .line 1115
    :cond_f
    const v4, 0x7f0600d2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090056

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 1117
    :cond_10
    const v4, 0x7f0600d1

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a
.end method
