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
    .line 289
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    .line 290
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 291
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 356
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v26

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$17(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v29

    const/high16 v30, 0x42400000    # 48.0f

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v31

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$17(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$18(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_7

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 408
    .local v21, "tth":I
    const/high16 v26, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 409
    .local v23, "ttw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    div-int/lit8 v27, v23, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v12, v0

    .line 410
    .local v12, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 411
    .local v22, "ttm":I
    if-gez v12, :cond_2

    .line 412
    const/4 v12, 0x0

    .line 413
    :cond_2
    add-int v26, v12, v23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v26

    sub-int v12, v26, v23

    .line 415
    :cond_3
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    div-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/high16 v27, 0x41900000    # 18.0f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_4

    .line 416
    const/high16 v26, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 417
    :cond_4
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    div-float v26, v26, v27

    const/high16 v27, 0x41900000    # 18.0f

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    div-float v27, v27, v28

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 420
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$23(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    new-instance v27, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v30

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v22, v29

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v32

    mul-float v31, v31, v32

    sub-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v12, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$23(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    sub-int v27, v22, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v30

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$22(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    add-int v28, v28, v22

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v30

    mul-float v29, v29, v30

    add-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v31

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v30, v12, v23

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v33

    mul-float v32, v32, v33

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$24(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 427
    .local v10, "dw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 429
    .local v8, "dh":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 430
    .local v25, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$26(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 431
    .local v15, "textW":F
    div-int/lit8 v26, v23, 0x2

    add-int v26, v26, v12

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v15, v27

    sub-float v26, v26, v27

    div-int/lit8 v27, v10, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    const/high16 v27, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    add-float v16, v26, v27

    .local v16, "textX":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    const/high16 v27, 0x42040000    # 33.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    const/high16 v27, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    add-float v17, v26, v27

    .line 432
    .local v17, "textY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$26(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 434
    new-instance v13, Landroid/graphics/Rect;

    int-to-float v0, v10

    move/from16 v26, v0

    sub-float v26, v16, v26

    const/high16 v27, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v29

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x421c0000    # 39.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v29

    mul-float v28, v28, v29

    add-float v27, v27, v28

    div-int/lit8 v28, v8, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    int-to-float v0, v10

    move/from16 v28, v0

    sub-float v28, v16, v28

    const/high16 v29, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v30

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v10

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v31

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    const/high16 v30, 0x421c0000    # 39.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v31

    mul-float v30, v30, v31

    add-float v29, v29, v30

    div-int/lit8 v30, v8, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v29, v29, v8

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .local v13, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x10100a7

    aput v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$25(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 440
    .end local v8    # "dh":I
    .end local v10    # "dw":I
    .end local v12    # "left":I
    .end local v13    # "r":Landroid/graphics/Rect;
    .end local v15    # "textW":F
    .end local v16    # "textX":F
    .end local v17    # "textY":F
    .end local v21    # "tth":I
    .end local v22    # "ttm":I
    .end local v23    # "ttw":I
    .end local v25    # "txt":Ljava/lang/String;
    :cond_6
    return-void

    .line 367
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 368
    .restart local v10    # "dw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 369
    .restart local v8    # "dh":I
    const/high16 v26, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 370
    .local v24, "tw":I
    const/high16 v26, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    .line 371
    .local v20, "ts":I
    const/high16 v26, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 372
    .local v18, "th":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v26

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42760000    # 61.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    int-to-float v0, v11

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    const/high16 v27, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 373
    .local v19, "to":I
    new-instance v13, Landroid/graphics/Rect;

    div-int/lit8 v26, v24, 0x2

    add-int v26, v26, v19

    div-int/lit8 v27, v10, 0x2

    sub-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v27

    sub-int v27, v27, v18

    div-int/lit8 v28, v18, 0x2

    add-int v27, v27, v28

    div-int/lit8 v28, v8, 0x2

    sub-int v27, v27, v28

    div-int/lit8 v28, v24, 0x2

    add-int v28, v28, v19

    div-int/lit8 v29, v10, 0x2

    sub-int v28, v28, v29

    add-int v28, v28, v10

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v29

    sub-int v29, v29, v18

    div-int/lit8 v30, v18, 0x2

    add-int v29, v29, v30

    div-int/lit8 v30, v8, 0x2

    sub-int v29, v29, v30

    add-int v29, v29, v8

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    .restart local v13    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v26

    move/from16 v0, v26

    if-eq v0, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$19(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-nez v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 376
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 377
    new-instance v26, Landroid/graphics/RectF;

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {v26 .. v30}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 378
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {v26 .. v30}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v27, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 380
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v26

    move/from16 v0, v26

    if-eq v0, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v26

    move/from16 v0, v26

    if-eq v0, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$19(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 382
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 384
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-direct/range {v26 .. v30}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const v29, 0x10100a1

    aput v29, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 390
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->badge:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$13(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Vector;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/ExtendedTabBar$Tab;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/ExtendedTabBar$Tab;->badge:Ljava/lang/String;

    .line 392
    .local v5, "b":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 393
    .local v7, "bw":F
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v9, "dp":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 395
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v26, v26, v7

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v6, v26, v27

    .line 396
    .local v6, "bbw":F
    const/4 v14, 0x0

    .line 397
    .local v14, "tdx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v6, v26

    if-gez v26, :cond_d

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v6

    const/high16 v27, 0x40000000    # 2.0f

    div-float v14, v26, v27

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v6, v0

    .line 401
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v19, v24

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v28, v6

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v29

    sub-int v29, v29, v18

    add-int v29, v29, v20

    add-int v30, v19, v24

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v31

    sub-int v31, v31, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    add-int v31, v31, v32

    add-int v31, v31, v20

    invoke-direct/range {v27 .. v31}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/ExtendedTabBar;->access$21(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 403
    add-int v26, v19, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v6

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    add-float v26, v26, v14

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getHeight()I

    move-result v27

    sub-int v27, v27, v18

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->ascent()F

    move-result v28

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->descent()F

    move-result v28

    add-float v27, v27, v28

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/ExtendedTabBar;->access$20(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Paint;

    move-result-object v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 366
    .end local v5    # "b":Ljava/lang/String;
    .end local v6    # "bbw":F
    .end local v7    # "bw":F
    .end local v9    # "dp":Landroid/graphics/Rect;
    .end local v14    # "tdx":F
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x42760000    # 61.5f

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

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

    if-lez v4, :cond_2

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$2(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v5

    add-float v2, v4, v5

    .line 296
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

    .line 297
    .local v0, "st":I
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$3(Lcom/vkontakte/android/ExtendedTabBar;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$4(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4, v3}, Lcom/vkontakte/android/ExtendedTabBar;->access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    .line 300
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v6}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$7(Lcom/vkontakte/android/ExtendedTabBar;F)V

    .line 347
    .end local v0    # "st":I
    .end local v2    # "x":F
    :cond_0
    :goto_0
    return v3

    .line 304
    .restart local v0    # "st":I
    .restart local v2    # "x":F
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {v4, v0, v8}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 305
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$4(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 307
    new-instance v1, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;-><init>(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)V

    .line 316
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V

    .line 317
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 322
    .end local v0    # "st":I
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "x":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 323
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 324
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V

    .line 326
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$11(Lcom/vkontakte/android/ExtendedTabBar;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    .line 330
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$12(Lcom/vkontakte/android/ExtendedTabBar;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 332
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

    .line 333
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    mul-float/2addr v4, v9

    div-float v0, v2, v4

    .line 334
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

    .line 335
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/ExtendedTabBar;->access$0(Lcom/vkontakte/android/ExtendedTabBar;FF)V

    .line 336
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$15(Lcom/vkontakte/android/ExtendedTabBar;)Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->invalidate()V

    .line 338
    .end local v0    # "st":F
    .end local v2    # "x":F
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 339
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

    .line 340
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4}, Lcom/vkontakte/android/ExtendedTabBar;->access$1(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v4

    mul-float/2addr v4, v9

    div-float v0, v2, v4

    .line 341
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

    .line 342
    iget-object v4, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    invoke-static {v4, v8}, Lcom/vkontakte/android/ExtendedTabBar;->access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    goto/16 :goto_0

    .line 347
    .end local v0    # "st":F
    .end local v2    # "x":F
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 351
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

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    return-void
.end method
