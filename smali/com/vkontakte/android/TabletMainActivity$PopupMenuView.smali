.class Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;
.super Landroid/widget/FrameLayout;
.source "TabletMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/TabletMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupMenuView"
.end annotation


# instance fields
.field bgPaint:Landroid/graphics/Paint;

.field offset:I

.field triangle:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 810
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 808
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->offset:I

    .line 811
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 812
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->bgPaint:Landroid/graphics/Paint;

    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xd1d1d2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 815
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 817
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 818
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 819
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 820
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40e00000    # 7.0f

    .line 838
    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 839
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 840
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 841
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 844
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 848
    return-void

    .line 845
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 829
    const-string v0, "vk"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/TabletMainActivity;

    invoke-static {v0}, Lcom/vkontakte/android/TabletMainActivity;->access$1(Lcom/vkontakte/android/TabletMainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTriangleOffset(I)V
    .locals 3
    .param p1, "px"    # I

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    iget v1, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->offset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 824
    add-int/lit8 v0, p1, -0x14

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->offset:I

    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->triangle:Landroid/graphics/Path;

    iget v1, p0, Lcom/vkontakte/android/TabletMainActivity$PopupMenuView;->offset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 826
    return-void
.end method
