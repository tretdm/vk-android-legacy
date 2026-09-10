.class public Lcom/vkontakte/android/ui/EmptyView;
.super Landroid/widget/LinearLayout;
.source "EmptyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/EmptyView;

    .line 32
    .local v0, "r":Lcom/vkontakte/android/ui/EmptyView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public setButtonText(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 50
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 58
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setOnBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 42
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
