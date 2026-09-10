.class public Lcom/vkontakte/android/ExTextView;
.super Landroid/widget/TextView;
.source "ExTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ExTextView$ResourceImageGetter;,
        Lcom/vkontakte/android/ExTextView$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field imgs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method

.method private doIt(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v7, 0x0

    .line 63
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p1, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 64
    .local v5, "spans":[Landroid/text/style/URLSpan;
    array-length v9, v5

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_0

    .line 71
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ImageSpan;

    .line 72
    .local v2, "ispans":[Landroid/text/style/ImageSpan;
    array-length v8, v2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "i":I
    array-length v8, v2

    :goto_1
    if-lt v7, v8, :cond_1

    .line 80
    return-object p1

    .line 64
    .end local v1    # "i":I
    .end local v2    # "ispans":[Landroid/text/style/ImageSpan;
    :cond_0
    aget-object v3, v5, v8

    .line 65
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 66
    .local v6, "start":I
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 67
    .local v0, "end":I
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 68
    new-instance v4, Lcom/vkontakte/android/ExTextView$URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, p0, v10}, Lcom/vkontakte/android/ExTextView$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/ExTextView;Ljava/lang/String;)V

    .line 69
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v4, v6, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "end":I
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    .restart local v1    # "i":I
    .restart local v2    # "ispans":[Landroid/text/style/ImageSpan;
    :cond_1
    aget-object v3, v2, v7

    .line 77
    .local v3, "span":Landroid/text/style/ImageSpan;
    iget-object v9, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v9, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/vkontakte/android/ExTextView;->imgs:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 88
    return-void

    .line 85
    :cond_1
    aget-object v0, v2, v1

    .line 86
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/vkontakte/android/ExTextView;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 5
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 46
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkontakte/android/ExTextView;Lcom/vkontakte/android/ExTextView$ResourceImageGetter;)V

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    .line 47
    .local v0, "sp":Landroid/text/Spannable;
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkontakte/android/ExTextView;Lcom/vkontakte/android/ExTextView$ResourceImageGetter;)V

    invoke-static {p1, v2, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    .locals 4
    .param p1, "h"    # Ljava/lang/String;
    .param p2, "igetter"    # Landroid/text/Html$ImageGetter;

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    .line 56
    .local v0, "sp":Landroid/text/Spannable;
    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/ExTextView$ResourceImageGetter;-><init>(Lcom/vkontakte/android/ExTextView;Lcom/vkontakte/android/ExTextView$ResourceImageGetter;)V

    invoke-static {p1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextEx(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ExTextView;->doIt(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    .line 38
    .local v1, "sp":Landroid/text/Spannable;
    invoke-super {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "x":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
