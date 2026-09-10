.class Lcom/vkontakte/android/ExtendedTabBar$TabsView;
.super Landroid/view/View;
.source "ExtendedTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ExtendedTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsView"
.end annotation


# instance fields
.field _x:F

.field final synthetic this$0:Lcom/vkontakte/android/ExtendedTabBar;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    .line 300
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 301
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 368
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 372
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$17(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v7

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$17(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$18(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v16

    if-lt v0, v4, :cond_8

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    const v5, 0x7f060180

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 420
    .local v19, "tb":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$23(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v4

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v4

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$23(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    .end local v19    # "tb":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    .line 425
    .local v27, "tth":I
    const/high16 v4, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v29, v0

    .line 426
    .local v29, "ttw":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-int/lit8 v5, v29, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    .line 427
    .local v17, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v28, v0

    .line 428
    .local v28, "ttm":I
    if-gez v17, :cond_3

    .line 429
    const/16 v17, 0x0

    .line 430
    :cond_3
    add-int v4, v17, v29

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v4

    sub-int v17, v4, v29

    .line 432
    :cond_4
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x41900000    # 18.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 433
    const/high16 v4, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v28, v0

    .line 434
    :cond_5
    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    div-float/2addr v4, v5

    const/high16 v5, 0x41900000    # 18.0f

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v28, v0

    .line 437
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v28, v7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v32

    mul-float v9, v9, v32

    sub-float/2addr v8, v9

    float-to-int v8, v8

    move/from16 v0, v17

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v28, v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$26(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, v28

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    move/from16 v0, v27

    int-to-float v8, v0

    sub-float/2addr v7, v8

    float-to-int v7, v7

    add-int v8, v17, v29

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v32, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v33

    mul-float v32, v32, v33

    sub-float v9, v9, v32

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$26(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 444
    .local v15, "dw":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 446
    .local v13, "dh":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v0, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->title:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 447
    .local v31, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$28(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 448
    .local v21, "textW":F
    div-int/lit8 v4, v29, 0x2

    add-int v4, v4, v17

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v21, v5

    sub-float/2addr v4, v5

    div-int/lit8 v5, v15, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v22, v4, v5

    .local v22, "textX":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move/from16 v0, v27

    int-to-float v5, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42040000    # 33.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v23, v4, v5

    .line 449
    .local v23, "textY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$28(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    new-instance v18, Landroid/graphics/Rect;

    int-to-float v4, v15

    sub-float v4, v22, v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move/from16 v0, v27

    int-to-float v6, v0

    sub-float/2addr v5, v6

    const/high16 v6, 0x421c0000    # 39.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    div-int/lit8 v6, v13, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v15

    sub-float v6, v22, v6

    const/high16 v7, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    move/from16 v0, v27

    int-to-float v8, v0

    sub-float/2addr v7, v8

    const/high16 v8, 0x421c0000    # 39.0f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    div-int/lit8 v8, v13, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v7, v13

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 452
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$27(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 457
    .end local v13    # "dh":I
    .end local v15    # "dw":I
    .end local v17    # "left":I
    .end local v18    # "r":Landroid/graphics/Rect;
    .end local v21    # "textW":F
    .end local v22    # "textX":F
    .end local v23    # "textY":F
    .end local v27    # "tth":I
    .end local v28    # "ttm":I
    .end local v29    # "ttw":I
    .end local v31    # "txt":Ljava/lang/String;
    :cond_7
    return-void

    .line 379
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 380
    .restart local v15    # "dw":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 381
    .restart local v13    # "dh":I
    const/high16 v4, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v30, v0

    .line 382
    .local v30, "tw":I
    const/high16 v4, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v26, v0

    .line 383
    .local v26, "ts":I
    const/high16 v4, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v24, v0

    .line 384
    .local v24, "th":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x42760000    # 61.5f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 385
    .local v25, "to":I
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v4, v30, 0x2

    add-int v4, v4, v25

    div-int/lit8 v5, v15, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v5

    sub-int v5, v5, v24

    div-int/lit8 v6, v24, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v13, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v30, 0x2

    add-int v6, v6, v25

    div-int/lit8 v7, v15, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v7

    sub-int v7, v7, v24

    div-int/lit8 v8, v24, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v13, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, v13

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 386
    .restart local v18    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v4

    move/from16 v0, v16

    if-eq v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$19(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 388
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 390
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 392
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v4

    move/from16 v0, v16

    if-eq v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v4

    move/from16 v0, v16

    if-eq v4, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$19(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 394
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v9}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a1

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 402
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v4, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->badge:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    iget-object v10, v4, Lcom/vkontakte/android/ExtendedTabBar$Tab;->badge:Ljava/lang/String;

    .line 404
    .local v10, "b":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 405
    .local v12, "bw":F
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 406
    .local v14, "dp":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 407
    iget v4, v14, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v12

    iget v5, v14, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float v11, v4, v5

    .line 408
    .local v11, "bbw":F
    const/16 v20, 0x0

    .line 409
    .local v20, "tdx":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v11, v4

    if-gez v4, :cond_e

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float v20, v4, v5

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v11, v4

    .line 413
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v25, v30

    int-to-float v6, v6

    sub-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v7

    sub-int v7, v7, v24

    add-int v7, v7, v26

    add-int v8, v25, v30

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v9

    sub-int v9, v9, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    add-int v9, v9, v32

    add-int v9, v9, v26

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    add-int v4, v25, v30

    int-to-float v4, v4

    sub-float/2addr v4, v11

    iget v5, v14, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float v4, v4, v20

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v5

    sub-int v5, v5, v24

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    move/from16 v0, v26

    int-to-float v6, v0

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    .end local v10    # "b":Ljava/lang/String;
    .end local v11    # "bbw":F
    .end local v12    # "bw":F
    .end local v14    # "dp":Landroid/graphics/Rect;
    .end local v20    # "tdx":F
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 420
    .end local v13    # "dh":I
    .end local v15    # "dw":I
    .end local v18    # "r":Landroid/graphics/Rect;
    .end local v24    # "th":I
    .end local v25    # "to":I
    .end local v26    # "ts":I
    .end local v30    # "tw":I
    .restart local v19    # "tb":Landroid/view/View;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v8

    if-le v4, v8, :cond_11

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    goto/16 :goto_1

    :cond_11
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x42760000    # 61.5f

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42400000    # 48.0f

    iget-object v7, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v7}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    add-float v2, v4, v5

    .line 306
    .local v2, "x":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    mul-float/2addr v4, v9

    div-float v4, v2, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 307
    .local v0, "st":I
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$4(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4, v3}, Lcom/vkontakte/android/ExtendedTabBar;->access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    .line 310
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$7(Lcom/vkontakte/android/ExtendedTabBar;F)V

    .line 359
    .end local v0    # "st":I
    .end local v2    # "x":F
    :cond_0
    :goto_0
    return v3

    .line 314
    .restart local v0    # "st":I
    .restart local v2    # "x":F
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v4, v0, v8}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tabbar_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->logStats(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$4(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 318
    new-instance v1, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;-><init>(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)V

    .line 327
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V

    .line 328
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 330
    .end local v1    # "task":Ljava/util/TimerTask;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->playSoundEffect(I)V

    goto :goto_0

    .line 334
    .end local v0    # "st":I
    .end local v2    # "x":F
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 335
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 336
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V

    .line 338
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 342
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$9(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    sub-float v2, v4, v5

    .line 345
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    mul-float/2addr v4, v9

    div-float v0, v2, v4

    .line 346
    .local v0, "st":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$14(Lcom/vkontakte/android/ExtendedTabBar;I)V

    .line 347
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 348
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$15(Lcom/vkontakte/android/ExtendedTabBar;)Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->invalidate()V

    .line 350
    .end local v0    # "st":F
    .end local v2    # "x":F
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$9(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    sub-float v2, v4, v5

    .line 352
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    mul-float/2addr v4, v9

    div-float v0, v2, v4

    .line 353
    .restart local v0    # "st":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$16(Lcom/vkontakte/android/ExtendedTabBar;FI)V

    .line 354
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4, v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "st":F
    .end local v2    # "x":F
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "drawing cache call ignored!"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    return-void
.end method
