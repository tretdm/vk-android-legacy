.class public Lcom/vkontakte/android/ui/LocationAttachView;
.super Landroid/widget/FrameLayout;
.source "LocationAttachView.java"


# instance fields
.field public show:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 45
    const v3, 0x7f020011

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->setBackgroundResource(I)V

    .line 46
    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 47
    .local v2, "padding":I
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setPadding(IIII)V

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/ui/LocationAttachView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "cv":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x43988000    # 305.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/LocationAttachView;->addView(Landroid/view/View;)V

    .line 53
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 54
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wm"    # I
    .param p2, "hm"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->getMeasuredWidth()I

    move-result v1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/LocationAttachView;->show:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/LocationAttachView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ui/LocationAttachView;->setMeasuredDimension(II)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/GeoAttachment;)V
    .locals 11
    .param p1, "ga"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    const v10, 0x7f06000d

    const v9, 0x7f06000c

    const/4 v8, 0x0

    const v4, 0x7f06000f

    const/4 v7, 0x4

    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 74
    iget-wide v0, p1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, p1, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0xb4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "url":Ljava/lang/String;
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/LocationAttachView$1;

    invoke-direct {v1, p0, v6, p1}, Lcom/vkontakte/android/ui/LocationAttachView$1;-><init>(Lcom/vkontakte/android/ui/LocationAttachView;Ljava/lang/String;Lcom/vkontakte/android/GeoAttachment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/ui/LocationAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 72
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_1
.end method
