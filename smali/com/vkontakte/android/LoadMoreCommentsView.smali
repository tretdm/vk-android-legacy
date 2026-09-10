.class public Lcom/vkontakte/android/LoadMoreCommentsView;
.super Landroid/widget/FrameLayout;
.source "LoadMoreCommentsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setNumComments(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 27
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoadMoreCommentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d000b

    invoke-virtual {p0}, Lcom/vkontakte/android/LoadMoreCommentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public showProgress(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 22
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoadMoreCommentsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoadMoreCommentsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    return-void

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    :cond_1
    move v2, v1

    .line 23
    goto :goto_1
.end method
