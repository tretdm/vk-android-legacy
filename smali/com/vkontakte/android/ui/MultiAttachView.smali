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

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 50
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 56
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 50
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 62
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

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 50
    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MultiAttachView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MultiAttachView;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MultiAttachView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MultiAttachView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MultiAttachView;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MultiAttachView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method private addBitmap(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method private addBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 16
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "tbmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    if-nez p2, :cond_0

    move-object/from16 p2, p1

    .end local p2    # "tbmp":Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v2, :cond_1

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    instance-of v2, v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v2, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    check-cast v2, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 279
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 280
    .local v9, "idx":I
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 281
    .local v12, "item":Landroid/widget/FrameLayout;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 283
    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v13, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v11, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v11, "iparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 290
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v15, "removeBtn":Landroid/widget/ImageView;
    const v2, 0x7f0200ae

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v14, "rbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 299
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    invoke-virtual {v12, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v10, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 304
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 305
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v9, v2, :cond_2

    const/4 v9, 0x0

    .line 308
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
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

    .line 313
    .local v1, "anim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/vkontakte/android/ui/MultiAttachView$4;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_3

    .line 326
    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/ui/MultiAttachView$5;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    .line 328
    const-wide/16 v3, 0xc8

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 330
    return-object v13

    .line 324
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private addTextThumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v3, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    instance-of v3, v3, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    if-eqz v3, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    check-cast v3, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener2;->onUpdateBitmaps()V

    .line 338
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 339
    .local v10, "idx":I
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 340
    .local v12, "item":Landroid/widget/FrameLayout;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 342
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 343
    .local v17, "t1":Landroid/widget/TextView;
    sget-object v3, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v14, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 349
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const/16 v3, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 351
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

    .line 352
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->setSingleLine()V

    .line 353
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 354
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 355
    new-instance v18, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    .local v18, "t2":Landroid/widget/TextView;
    sget-object v3, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 357
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 359
    const/4 v3, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const/16 v3, 0x11

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 362
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

    .line 363
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->setSingleLine()V

    .line 364
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 365
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 367
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 368
    .local v13, "ll":Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 369
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 370
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    const/high16 v3, -0x1000000

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 373
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 375
    new-instance v16, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 376
    .local v16, "removeBtn":Landroid/widget/ImageView;
    const v3, 0x7f0200ae

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v15, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v15, "rbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x35

    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v11, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v11, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 384
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 385
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v10, v3, :cond_1

    const/4 v10, 0x0

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 390
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

    .line 391
    .local v2, "anim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 392
    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 394
    new-instance v3, Lcom/vkontakte/android/ui/MultiAttachView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/vkontakte/android/ui/MultiAttachView$6;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v9, v3, :cond_2

    .line 424
    new-instance v3, Lcom/vkontakte/android/ui/MultiAttachView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/ui/MultiAttachView$7;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    .line 426
    const-wide/16 v4, 0xc8

    .line 424
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 428
    return-void

    .line 422
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 421
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 151
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

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_1
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->busy:Z

    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView$2;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method

.method public addAlreadyUploaded(Ljava/lang/String;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v11, 0x0

    .line 196
    .local v11, "thumb":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    .line 197
    .local v9, "s":[Ljava/lang/String;
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "\\|"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 199
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " ===== "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    aget-object v11, v9, v0

    .line 203
    :cond_0
    const/4 v7, 0x0

    .line 204
    .local v7, "found":Z
    const/4 v8, 0x0

    .line 205
    .local v8, "i":I
    const/4 v0, 0x0

    aget-object v0, v9, v0

    const-string v1, "fwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 219
    :cond_1
    :goto_1
    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "A"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :cond_3
    if-nez v7, :cond_4

    .line 222
    if-eqz v11, :cond_7

    const-string v0, "http://"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    const-string v0, "\\|"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 224
    .local v2, "_thumb":Ljava/lang/String;
    move-object v3, p1

    .line 225
    .local v3, "_id":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 226
    .local v5, "idx":I
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v4

    .line 227
    .local v4, "iv":Landroid/widget/ImageView;
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/ui/MultiAttachView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/MultiAttachView$3;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;I)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 268
    .end local v2    # "_thumb":Ljava/lang/String;
    .end local v3    # "_id":Ljava/lang/String;
    .end local v4    # "iv":Landroid/widget/ImageView;
    .end local v5    # "idx":I
    :cond_4
    :goto_2
    return-void

    .line 206
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 207
    .local v6, "a":Ljava/lang/String;
    const-string v1, "vk"

    invoke-static {v1, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "Afwd"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    const/4 v7, 0x1

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "A"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 216
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 261
    .end local v6    # "a":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    .line 262
    const-string v0, "\\|"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "t":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v10, v0

    const/4 v1, 0x1

    aget-object v1, v10, v1

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->addTextThumb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 265
    .end local v10    # "t":[Ljava/lang/String;
    :cond_8
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->addBitmap(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    goto :goto_2
.end method

.method public addLocation(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 2
    .param p1, "ga"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 483
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 488
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MultiAttachView$10;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 502
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 503
    return-void
.end method

.method public getCurrent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
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
    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
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

    .line 122
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v0, ""

    goto :goto_0
.end method

.method public getNumAttachments()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getThumbnailAt(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->thumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

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
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    return v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 80
    const v1, 0x7f020011

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setBackgroundResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->density:F

    .line 82
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 89
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    const v2, 0x7f0201e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v0, "iiparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/vkontakte/android/ui/MultiAttachView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MultiAttachView$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 72
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->isAttachedToWindow:Z

    .line 77
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wm"    # I
    .param p2, "hm"    # I

    .prologue
    .line 472
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiAttachView;->getMeasuredWidth()I

    move-result v1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->setMeasuredDimension(II)V

    .line 475
    return-void

    .line 474
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

    .line 431
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    if-eqz v3, :cond_0

    .line 469
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/MultiAttachView;->animating:Z

    .line 433
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

    .line 434
    .local v0, "anim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 435
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 436
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$8;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/ui/MultiAttachView$8;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/view/View;)V

    invoke-virtual {p0, v1, v8, v9}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/MultiAttachView$9;-><init>(Lcom/vkontakte/android/ui/MultiAttachView;I)V

    .line 468
    const-wide/16 v2, 0x15e

    .line 449
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/ui/MultiAttachView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iput v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->geo:Lcom/vkontakte/android/GeoAttachment;

    .line 143
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation:Z

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;->onAllAttachmentsRemoved()V

    .line 145
    :cond_0
    return-void
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiAttachView;->currentIndex:I

    .line 149
    return-void
.end method

.method public setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView;->listener:Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;

    .line 112
    return-void
.end method
