.class public Lcom/vkontakte/android/DocAttachView;
.super Landroid/widget/LinearLayout;
.source "DocAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static gifView:Lcom/vkontakte/android/ui/GifView;


# instance fields
.field URL:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/DocAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/DocAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    const-string v4, ".gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-nez v2, :cond_1

    .line 61
    new-instance v2, Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/vkontakte/android/ui/GifView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 62
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/DocAttachView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/DocAttachView;->addView(Landroid/view/View;)V

    .line 64
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    iget-object v3, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/GifView;->loadURL(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_2

    const/4 v1, 0x1

    .line 67
    .local v1, "otherView":Z
    :goto_1
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    const/4 v2, 0x0

    sput-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->requestLayout()V

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/DocAttachView;->onClick(Landroid/view/View;)V

    goto :goto_0

    .end local v1    # "otherView":Z
    :cond_2
    move v1, v3

    .line 66
    goto :goto_1

    .line 76
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 33
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 35
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v1, 0x1

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 54
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/DocAttachView;->setMeasuredDimension(II)V

    .line 55
    :cond_1
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "docName"    # Ljava/lang/String;
    .param p2, "dlLink"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 38
    iput-object p2, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    .line 40
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/vkontakte/android/Global;->langFileSize(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "docName"    # Ljava/lang/String;
    .param p2, "dlLink"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "thumb"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p2, p0, Lcom/vkontakte/android/DocAttachView;->URL:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    .line 48
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
