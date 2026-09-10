.class public Lcom/vkontakte/android/ui/MultiAttachView;
.super Landroid/widget/HorizontalScrollView;
.source "MultiAttachView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;,
        Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;,
        Lcom/vkontakte/android/ui/MultiAttachView$ItemView;
    }
.end annotation


# instance fields
.field private addBtn:Landroid/widget/ImageView;

.field private animating:Z

.field private attachments:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public busy:Z

.field private currentIndex:I

.field private density:F

.field private geo:Lcom/vkontakte/android/GeoAttachment;

.field private hasLocation:Z

.field private isAttachedToWindow:Z

.field layout:Landroid/widget/LinearLayout;

.field private listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

.field public show:Z

.field private thumbs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 47
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 51
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 47
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 51
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 47
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 51
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 53
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MultiAttachView;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MultiAttachView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MultiAttachView;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MultiAttachView;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MultiAttachView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MultiAttachView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return v0
.end method

.method private addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 262
    return-void
.end method

.method private addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 16
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "tbmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    if-nez p2, :cond_0

    move-object/from16 p2, p1

    .end local p2    # "tbmp":Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v2, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    instance-of v2, v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v2, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    check-cast v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 269
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 270
    .local v9, "idx":I
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v12, "item":Landroid/widget/FrameLayout;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 273
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    .local v13, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 277
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v11, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v11, "iparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v15, "removeBtn":Landroid/widget/ImageView;
    const v2, 0x7f0200ae

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v14, "rbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v12, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v10, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 294
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 295
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 299
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3c23d70a    # 0.01f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3c23d70a    # 0.01f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 300
    .local v1, "anim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 301
    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/vkontakte/android/ui/MultiAttachView$4;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_2

    .line 313
    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ui/MultiAttachView$5;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    .line 315
    const-wide/16 v3, 0xc8

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 317
    return-void

    .line 311
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private addTextThumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v3, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    instance-of v3, v3, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v3, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    check-cast v3, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 324
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 325
    .local v10, "idx":I
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 326
    .local v12, "item":Landroid/widget/FrameLayout;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 328
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 329
    .local v17, "t1":Landroid/widget/TextView;
    sget-object v3, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 330
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v14, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 335
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/16 v3, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 337
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->setSingleLine()V

    .line 339
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 341
    new-instance v18, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 342
    .local v18, "t2":Landroid/widget/TextView;
    sget-object v3, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 343
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 345
    const/4 v3, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    const/16 v3, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 348
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 349
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    .line 350
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 353
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 354
    .local v13, "ll":Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 355
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 356
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    const/high16 v3, -0x1000000

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 359
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 361
    new-instance v16, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 362
    .local v16, "removeBtn":Landroid/widget/ImageView;
    const v3, 0x7f0200ae

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v15, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v15, "rbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x35

    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 365
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 368
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v11, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v11, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 370
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 371
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 375
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3c23d70a    # 0.01f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 376
    .local v2, "anim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 377
    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    new-instance v3, Lcom/vkontakte/android/ui/MultiAttachView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/vkontakte/android/ui/MultiAttachView$6;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v9, v3, :cond_1

    .line 409
    new-instance v3, Lcom/vkontakte/android/ui/MultiAttachView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/ui/MultiAttachView$7;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    .line 411
    const-wide/16 v4, 0xc8

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 413
    return-void

    .line 407
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 152
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    :cond_1
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView$2;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method public addAlreadyUploaded(Ljava/lang/String;)V
    .locals 14
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "thumb":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    aput-object p1, v5, v11

    .line 198
    .local v5, "s":[Ljava/lang/String;
    const-string v8, "|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    const-string v8, "\\|"

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 200
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v10, v5, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " ===== "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    aget-object v7, v5, v12

    .line 204
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, "found":Z
    const/4 v4, 0x0

    .line 206
    .local v4, "i":I
    aget-object v8, v5, v11

    const-string v9, "fwd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 220
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "A"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_3

    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :cond_3
    if-nez v3, :cond_4

    .line 223
    if-eqz v7, :cond_7

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 224
    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v11

    .line 225
    .local v1, "_thumb":Ljava/lang/String;
    move-object v0, p1

    .line 226
    .local v0, "_id":Ljava/lang/String;
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/vkontakte/android/ui/MultiAttachView$3;

    invoke-direct {v9, p0, v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView$3;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 258
    .end local v0    # "_id":Ljava/lang/String;
    .end local v1    # "_thumb":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 207
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "a":Ljava/lang/String;
    const-string v9, "vk"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v9, "Afwd"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 210
    const/4 v3, 0x1

    .line 214
    iget-object v8, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v8, v4, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "a":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_8

    .line 252
    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "t":[Ljava/lang/String;
    aget-object v8, v6, v11

    aget-object v9, v6, v12

    invoke-direct {p0, v8, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->addTextThumb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .end local v6    # "t":[Ljava/lang/String;
    :cond_8
    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public addLocation(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 2
    .param p1, "ga"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 468
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 473
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MultiAttachView$10;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 487
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 488
    return-void
.end method

.method public getCurrent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    iget v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    iget v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v0, ""

    goto :goto_0
.end method

.method public getNumAttachments()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getThumbnailAt(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUriAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 81
    const v1, 0x7f020011

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setBackgroundResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 83
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 90
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const v2, 0x7f0201c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 94
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MultiAttachView$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 73
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 78
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wm"    # I
    .param p2, "hm"    # I

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 459
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getMeasuredWidth()I

    move-result v1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->setMeasuredDimension(II)V

    .line 460
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    const-wide/16 v8, 0xc8

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3c23d70a    # 0.01f

    .line 416
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    if-eqz v3, :cond_0

    .line 454
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 418
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v5, v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 419
    .local v0, "anim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 420
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 421
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$8;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/ui/MultiAttachView$8;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/view/View;)V

    invoke-virtual {p0, v1, v8, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView$9;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;I)V

    .line 453
    const-wide/16 v2, 0x15e

    .line 434
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 144
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;->onAllAttachmentsRemoved()V

    .line 146
    :cond_0
    return-void
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 150
    return-void
.end method

.method public setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 113
    return-void
.end method
