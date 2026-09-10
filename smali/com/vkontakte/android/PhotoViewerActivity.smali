.class public Lcom/vkontakte/android/PhotoViewerActivity;
.super Landroid/app/Activity;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ZoomableImageView$OnNavListener;


# static fields
.field private static final REQ_SEND_FRIEND:I = 0x90f

.field public static final RESULT_PHOTO_DELETED:I = 0x4

.field public static preview:Landroid/graphics/Bitmap;


# instance fields
.field cancel:Z

.field curPhoto:I

.field private currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

.field private dataLoading:Z

.field private ignoreNextVisibilityChange:Z

.field private infoRequest:Lcom/vkontakte/android/APIRequest;

.field isList:Z

.field private likeReq:Lcom/vkontakte/android/APIRequest;

.field list:[Lcom/vkontakte/android/Photo;

.field loaded:Z

.field private nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

.field private numLoaded:I

.field preloadedNextImage:Landroid/graphics/Bitmap;

.field prevImage:Landroid/graphics/Bitmap;

.field private wasPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    .line 54
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 55
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 57
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 58
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    .line 59
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 60
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    .line 61
    iput v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    .line 62
    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 63
    new-instance v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct {v0}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 64
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->toggleControls()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->doDeletePhoto()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoViewerActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoViewerActivity;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->nextImgWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoViewerActivity;[Lcom/vkontakte/android/PhotoTag;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PhotoViewerActivity;)[Lcom/vkontakte/android/PhotoTag;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PhotoViewerActivity;->openComments(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showTags()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showComments()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerActivity;->like(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoViewerActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoViewerActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showControls()V

    return-void
.end method

.method private deletePhoto()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 311
    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 312
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$10;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$10;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 319
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 321
    return-void
.end method

.method private displayImage(Landroid/graphics/Bitmap;Z)V
    .locals 9
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "animate"    # Z

    .prologue
    const v8, 0x7f0600bf

    const v7, 0x7f0600c0

    const/4 v6, 0x0

    .line 438
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    .line 439
    if-nez p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 441
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 442
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    const v3, 0x7f090196

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 447
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    const v3, 0x7f0600c1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    .line 450
    if-eqz p2, :cond_1

    .line 451
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 452
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 453
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v3, :cond_5

    .line 456
    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-nez v3, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->finish()V

    .line 477
    :cond_3
    :goto_0
    return-void

    .line 462
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-nez v3, :cond_6

    .line 463
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadPhotoInfo()V

    .line 467
    :goto_1
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 469
    :cond_5
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 472
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/PhotoViewerActivity$15;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/PhotoViewerActivity$15;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 475
    const-wide/16 v5, 0x1f4

    .line 472
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 465
    :cond_6
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V

    goto :goto_1
.end method

.method private doDeletePhoto()V
    .locals 5

    .prologue
    .line 324
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 328
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.delete"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 330
    const-string v2, "pid"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 331
    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$11;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 346
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 347
    return-void
.end method

.method private hideControls()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x15e

    const v4, 0x7f0600c2

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 404
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 405
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$13;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v1, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 410
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 411
    iput-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    .line 413
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 414
    const v2, 0x7f0600be

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 613
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 614
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 615
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 618
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 616
    goto :goto_0

    :cond_1
    move v2, v3

    .line 618
    goto :goto_0
.end method

.method private like(I)V
    .locals 5
    .param p1, "p"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 779
    const-string v0, "vk"

    const-string v3, "like req cancel"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
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

    .line 781
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iput-boolean v1, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 782
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 783
    const-string v0, "vk"

    const-string v3, "likes--"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 792
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

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 797
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

    .line 798
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 799
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_4

    const-string v0, "likes.add"

    :goto_3
    invoke-direct {v1, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 800
    const-string v0, "type"

    const-string v2, "photo"

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 801
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 802
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 803
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$26;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerActivity$26;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 823
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 799
    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->likeReq:Lcom/vkontakte/android/APIRequest;

    .line 824
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 786
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 787
    const-string v0, "vk"

    const-string v3, "likes++"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    aget-object v0, v0, p1

    iget v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 797
    goto :goto_2

    .line 799
    :cond_4
    const-string v0, "likes.delete"

    goto :goto_3
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PhotoViewerActivity$14;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    return-void
.end method

.method private loadNextPage()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 539
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_uid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 540
    .local v1, "uid":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 541
    iput-boolean v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->dataLoading:Z

    .line 542
    new-instance v2, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    invoke-direct {v2, v1, v3, v6}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 543
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$18;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$18;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 565
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 567
    :cond_0
    if-ne v0, v5, :cond_1

    .line 568
    new-instance v2, Lcom/vkontakte/android/api/PhotosGetUserPhotos;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    invoke-direct {v2, v1, v3, v6}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;-><init>(III)V

    .line 569
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$19;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$19;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/PhotosGetUserPhotos;->setCallback(Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 591
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 593
    :cond_1
    return-void
.end method

.method private loadPhotoInfo()V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v1

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 639
    :cond_1
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 640
    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "var t=API.photos.getTags({owner_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 641
    const-string v3, "var c=API.photos.getComments({owner_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    const-string v3, "var l=API.photos.getById({photos: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", extended: 1});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    const-string v3, "return {t: t, c: c[0], l:l[0].likes, d:l[0].text, date: l[0].created};"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$21;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 685
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 639
    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->infoRequest:Lcom/vkontakte/android/APIRequest;

    .line 686
    return-void
.end method

.method private openComments(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "userphoto"    # Ljava/lang/String;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v0, v1

    .line 757
    .local v7, "p":Lcom/vkontakte/android/Photo;
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v6, "intent":Landroid/content/Intent;
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 759
    .local v8, "pe":Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x1

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 760
    iget-object v0, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 761
    iget-object v9, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v0, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v1, v7, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    iget v4, v7, Lcom/vkontakte/android/Photo;->id:I

    iget v5, v7, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 762
    iget v0, v7, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 763
    iget v0, v7, Lcom/vkontakte/android/Photo;->id:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 764
    iget v0, v7, Lcom/vkontakte/android/Photo;->date:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 765
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Lcom/vkontakte/android/Photo;->date:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 766
    iput-object p1, v8, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 767
    iput-object p2, v8, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 768
    iget v0, v7, Lcom/vkontakte/android/Photo;->nLikes:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 769
    iget-boolean v0, v7, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 770
    :cond_0
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 771
    const-string v0, "entry"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 773
    return-void

    .line 760
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
    .locals 2

    .prologue
    .line 596
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$20;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 609
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 610
    return-void
.end method

.method private savePhoto()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$12;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method

.method private sendPhoto()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const/16 v1, 0x90f

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 306
    return-void
.end method

.method private showComments()V
    .locals 5

    .prologue
    .line 714
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

    .line 715
    :cond_0
    new-instance v2, Lcom/vkontakte/android/api/GetUserNameAndPhoto;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;-><init>(I)V

    .line 716
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$23;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerActivity$23;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->setCallback(Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 726
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 727
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 753
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v2, :cond_2

    .line 730
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "userphoto"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->openComments(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 733
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 734
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 735
    new-instance v2, Lcom/vkontakte/android/PhotoViewerActivity$24;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PhotoViewerActivity$24;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 741
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity$25;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V

    .line 750
    .local v1, "r":Ljava/lang/Runnable;
    const v2, 0x7f0600be

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showControls()V
    .locals 6

    .prologue
    const v5, 0x7f0600c2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 384
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 385
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 386
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 389
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 390
    iput-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->ignoreNextVisibilityChange:Z

    .line 392
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 393
    const v2, 0x7f0600be

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showTags()V
    .locals 4

    .prologue
    .line 689
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 691
    .local v1, "usernames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 694
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 695
    new-instance v3, Lcom/vkontakte/android/PhotoViewerActivity$22;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerActivity$22;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 706
    const v3, 0x7f0900e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 707
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 711
    .end local v0    # "i":I
    .end local v1    # "usernames":[Ljava/lang/String;
    :goto_1
    return-void

    .line 692
    .restart local v0    # "i":I
    .restart local v1    # "usernames":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->currentPhotoTags:[Lcom/vkontakte/android/PhotoTag;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    .end local v1    # "usernames":[Ljava/lang/String;
    :cond_1
    const v2, 0x7f0900ed

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private toggleControls()V
    .locals 1

    .prologue
    .line 377
    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->hideControls()V

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->showControls()V

    goto :goto_0
.end method

.method private updateInfoPanel()V
    .locals 9

    .prologue
    const v8, 0x7f0600ce

    const v7, 0x7f0600cc

    const v6, 0x7f0600ca

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/vkontakte/android/Photo;->nComments:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/vkontakte/android/Photo;->nTags:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v4

    iget v0, v0, Lcom/vkontakte/android/Photo;->nComments:I

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 628
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v4

    iget v0, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    if-lez v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 629
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v4

    iget v1, v1, Lcom/vkontakte/android/Photo;->nTags:I

    if-lez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    return-void

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v3

    .line 627
    goto :goto_1

    :cond_2
    move v0, v3

    .line 628
    goto :goto_2

    :cond_3
    move v2, v3

    .line 629
    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 827
    const/16 v4, 0x90f

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 828
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

    .line 829
    .local v0, "attID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    const-string v4, "profile"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 832
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 833
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "peerID"

    iget v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    const-string v4, "title"

    iget-object v5, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v4, "photo"

    iget-object v5, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v4, "attachments"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 839
    .end local v0    # "attID":Ljava/lang/String;
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "photo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 77
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->requestWindowFeature(I)Z

    .line 78
    const v7, 0x7f03002b

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->setContentView(I)V

    .line 80
    const v7, 0x7f0600c1

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020213

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "descr"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const v7, 0x7f0600c7

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "descr"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    const v7, 0x7f0600c0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "photo_list"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "photo_list"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 95
    .local v0, "_list":[Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "list_total"

    array-length v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    new-array v7, v7, [Lcom/vkontakte/android/Photo;

    iput-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 96
    array-length v7, v0

    iput v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    .line 97
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    const/4 v10, 0x0

    array-length v7, v0

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v11, v11

    if-le v7, v11, :cond_d

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v7, v7

    :goto_0
    invoke-static {v0, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v0, 0x0

    check-cast v0, [Landroid/os/Parcelable;

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "photo_index"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 100
    const v7, 0x7f0600c0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ZoomableImageView;

    .line 101
    .local v4, "iv":Lcom/vkontakte/android/ZoomableImageView;
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 102
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ZoomableImageView;->setIsList(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "incomplete"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v7, :cond_e

    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "incomplete"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ZoomableImageView;->setCanGoBack(Z)V

    .line 104
    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ZoomableImageView;->setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V

    .line 106
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 108
    const v7, 0x7f0600c4

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09007e

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-gez v7, :cond_3

    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 111
    :cond_3
    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v8, v8

    if-lt v7, v8, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 112
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget-object v6, v7, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 114
    iget v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadNextPage()V

    .line 118
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isWifi()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    .line 121
    .end local v0    # "_list":[Landroid/os/Parcelable;
    .end local v4    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "feed_entry"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "feed_entry"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    .line 123
    .local v3, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v7, Lcom/vkontakte/android/api/GetFullPhotoList;

    invoke-direct {v7, v3}, Lcom/vkontakte/android/api/GetFullPhotoList;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 124
    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$2;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GetFullPhotoList;->setCallback(Lcom/vkontakte/android/api/GetFullPhotoList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 150
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 153
    .end local v3    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_7
    invoke-direct {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V

    .line 155
    const v7, 0x7f0600cd

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$3;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v7, 0x7f0600cb

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$4;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$4;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v7, 0x7f0600c9

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$5;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v7, 0x7f0600c2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-boolean v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 177
    const v7, 0x7f0600c0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    iget-boolean v8, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ZoomableImageView;->setTagsVisible(Z)V

    .line 178
    iget-boolean v7, p0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 179
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "hide_bottombar"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f0600c8

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_9
    const v7, 0x7f0600c3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$6;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_a

    .line 189
    const v7, 0x7f0600be

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/PhotoViewerActivity$7;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/PhotoViewerActivity$7;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_a
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_b

    .line 206
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    .local v2, "btnMenu":Landroid/widget/ImageView;
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 208
    const v7, 0x7f0200c3

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x10

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 213
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v7, Lcom/vkontakte/android/PhotoViewerActivity$8;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoViewerActivity$8;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v7, 0x7f0600c6

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    .end local v1    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "btnMenu":Landroid/widget/ImageView;
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 233
    const v7, 0x7f0600c1

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 235
    .local v5, "pb":Landroid/os/Parcelable;
    if-eqz v5, :cond_10

    .line 236
    const v7, 0x7f0600bf

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    check-cast v5, Landroid/graphics/Bitmap;

    .end local v5    # "pb":Landroid/os/Parcelable;
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :cond_c
    :goto_3
    const v7, 0x7f0600be

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 244
    return-void

    .line 97
    .restart local v0    # "_list":[Landroid/os/Parcelable;
    :cond_d
    array-length v7, v0

    goto/16 :goto_0

    .line 103
    .restart local v4    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 176
    .end local v0    # "_list":[Landroid/os/Parcelable;
    .end local v4    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_f
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 238
    .restart local v5    # "pb":Landroid/os/Parcelable;
    :cond_10
    const v7, 0x7f0600bf

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget-object v8, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    const/4 v7, 0x0

    sput-object v7, Lcom/vkontakte/android/PhotoViewerActivity;->preview:Landroid/graphics/Bitmap;

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->loaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 278
    :goto_0
    return v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 277
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 278
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->cancel:Z

    .line 250
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    return-void
.end method

.method public onNavNext()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const v7, 0x7f0600c0

    const/4 v1, 0x0

    .line 481
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 482
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$16;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 484
    const-wide/16 v2, 0x64

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->getPrevImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    .line 488
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 489
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    iput v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V

    .line 497
    :goto_1
    const v0, 0x7f0600c7

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const v0, 0x7f0600c4

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007e

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

    .line 500
    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->numLoaded:I

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 501
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadNextPage()V

    .line 504
    :cond_3
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "incomplete"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v3, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "incomplete"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setCanGoBack(Z)V

    .line 506
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    goto/16 :goto_0

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;Z)V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 504
    goto :goto_2
.end method

.method public onNavPrev()V
    .locals 10

    .prologue
    const v9, 0x7f0600c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 511
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ZoomableImageView;->getNextImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->preloadedNextImage:Landroid/graphics/Bitmap;

    .line 512
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 513
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    iput v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 515
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 516
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V

    .line 521
    :goto_0
    const v2, 0x7f0600c7

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    const v2, 0x7f0600c4

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007e

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

    .line 524
    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v2, -0x1

    .line 525
    .local v0, "_prevIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 526
    :cond_2
    move v1, v0

    .line 527
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

    .line 528
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/PhotoViewerActivity$17;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/PhotoViewerActivity$17;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 531
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 534
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

    .line 535
    return-void

    .line 518
    .end local v0    # "_prevIndex":I
    .end local v1    # "prevIndex":I
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->displayImage(Landroid/graphics/Bitmap;Z)V

    .line 519
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity;->prevImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .restart local v0    # "_prevIndex":I
    .restart local v1    # "prevIndex":I
    :cond_6
    move v3, v4

    .line 534
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 290
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->savePhoto()V

    goto :goto_0

    .line 293
    :pswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->deletePhoto()V

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->sendPhoto()V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601b4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 256
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$9;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 260
    const-wide/16 v2, 0x12c

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 282
    const v0, 0x7f0601b6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v0, v0

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v3, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v3

    iget v0, v0, Lcom/vkontakte/android/Photo;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 283
    return v1

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->wasPaused:Z

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->preloadNextImage()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->loadImage(Ljava/lang/String;)V

    goto :goto_0
.end method
