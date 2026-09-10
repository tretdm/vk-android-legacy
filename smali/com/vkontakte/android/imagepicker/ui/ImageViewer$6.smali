.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;
.super Landroid/widget/FrameLayout;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    .line 1168
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1204
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1173
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$9(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$15(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1175
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$16(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$17(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$18(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$19(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$18(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$19(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v0, v3, v4

    .line 1179
    .local v0, "a":F
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$20(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1180
    .local v1, "ai":F
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$21(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$16(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$22(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$17(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1182
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->invalidate()V

    .line 1186
    .end local v0    # "a":F
    .end local v1    # "ai":F
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 1187
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1189
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1208
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1210
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v6}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1212
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1214
    sub-int v5, p4, p2

    .local v5, "w":I
    sub-int v6, p5, p3

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerOffset()I

    move-result v7

    sub-int v1, v6, v7

    .line 1216
    .local v1, "h":I
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 1217
    .local v3, "sr":F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 1218
    .local v4, "tr":F
    cmpg-float v6, v3, v4

    if-gez v6, :cond_1

    .line 1220
    int-to-float v6, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 1222
    .local v2, "scale":F
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v6}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v6

    const/4 v7, 0x0

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v6, v7, v8, v5, v9}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->layout(IIII)V

    .line 1231
    .end local v1    # "h":I
    .end local v2    # "scale":F
    .end local v3    # "sr":F
    .end local v4    # "tr":F
    .end local v5    # "w":I
    :cond_0
    :goto_0
    return-void

    .line 1226
    .restart local v1    # "h":I
    .restart local v3    # "sr":F
    .restart local v4    # "tr":F
    .restart local v5    # "w":I
    :cond_1
    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 1228
    .restart local v2    # "scale":F
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v6}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v6

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x0

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->layout(IIII)V

    goto :goto_0
.end method
