.class public Lcom/vkontakte/android/LinkAttachView;
.super Landroid/widget/RelativeLayout;
.source "LinkAttachView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/LinkAttachView$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field link:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/vkontakte/android/LinkAttachView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/LinkAttachView;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/LinkAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/LinkAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "linkParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LinkAttachView;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 85
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 92
    return-object p1

    .line 85
    :cond_0
    aget-object v1, v3, v5

    .line 86
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 87
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 89
    new-instance v2, Lcom/vkontakte/android/LinkAttachView$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/LinkAttachView$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/LinkAttachView;Ljava/lang/String;)V

    .line 90
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "linkhost"    # Ljava/lang/String;
    .param p3, "linkurl"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "vkontakte.ru"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vk.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    new-instance v1, Lcom/vkontakte/android/LinkAttachView$1;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/LinkAttachView$1;-><init>(Lcom/vkontakte/android/LinkAttachView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachView;->link:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
