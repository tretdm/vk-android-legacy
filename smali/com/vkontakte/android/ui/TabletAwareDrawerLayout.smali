.class public Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "TabletAwareDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

.field private showFixed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 26
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method


# virtual methods
.method public closeDrawers()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 84
    :cond_0
    return-void
.end method

.method public isShownFixed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "content":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "menu":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v4, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 67
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "menu":Landroid/view/View;
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/DrawerLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 34
    .local v6, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 35
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v11, 0xf

    .line 36
    .local v5, "scrSize":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v8, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 37
    .local v8, "ww":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v7, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 38
    .local v7, "wh":I
    if-le v8, v7, :cond_2

    const/4 v11, 0x4

    if-eq v5, v11, :cond_0

    const/4 v11, 0x3

    if-ne v5, v11, :cond_2

    :cond_0
    move v4, v9

    .line 39
    .local v4, "newShowFixed":Z
    :goto_0
    iget-boolean v11, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eq v11, v4, :cond_1

    .line 40
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 41
    iget-object v11, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    if-eqz v11, :cond_1

    .line 42
    iget-object v11, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    invoke-interface {v11, v4}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;->onFixedStateChanged(Z)V

    .line 44
    :cond_1
    iget-boolean v11, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v11, :cond_3

    .line 45
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "menu":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 48
    .local v3, "mlp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v9, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    or-int/2addr v9, v12

    or-int v11, v1, v12

    invoke-virtual {v2, v9, v11}, Landroid/view/View;->measure(II)V

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v6, v9

    or-int/2addr v9, v12

    or-int v11, v1, v12

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    .line 50
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->setMeasuredDimension(II)V

    .line 51
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "menu":Landroid/view/View;
    .end local v3    # "mlp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    return-void

    .end local v4    # "newShowFixed":Z
    :cond_2
    move v4, v10

    .line 38
    goto :goto_0

    .line 53
    .restart local v4    # "newShowFixed":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnFixedStateChangedListener(Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    .line 92
    return-void
.end method
