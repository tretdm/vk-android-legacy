.class Lcom/vkontakte/android/PhotoListView$FooterView;
.super Landroid/widget/FrameLayout;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FooterView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/PhotoListView;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 460
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$FooterView;->this$0:Lcom/vkontakte/android/PhotoListView;

    .line 461
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 462
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 463
    .local v1, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 464
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 465
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView$FooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 466
    const/16 v2, 0x21

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 471
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListView$FooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoListView$FooterView;->addView(Landroid/view/View;)V

    .line 474
    return-void

    .line 468
    :cond_0
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method
