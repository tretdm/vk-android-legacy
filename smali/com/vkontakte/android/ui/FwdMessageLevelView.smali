.class public Lcom/vkontakte/android/ui/FwdMessageLevelView;
.super Landroid/view/View;
.source "FwdMessageLevelView.java"


# instance fields
.field private level:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    .line 18
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    .line 23
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->paint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->paint:Landroid/graphics/Paint;

    const v1, -0x7f524f4d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40c00000    # 6.0f

    .line 45
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    if-lt v6, v0, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v6

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/FwdMessageLevelView;->setMeasuredDimension(II)V

    .line 38
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ui/FwdMessageLevelView;->level:I

    .line 42
    return-void
.end method
