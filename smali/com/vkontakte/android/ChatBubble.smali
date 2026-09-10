.class public Lcom/vkontakte/android/ChatBubble;
.super Landroid/widget/LinearLayout;
.source "ChatBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ChatBubble$ImgGetter;,
        Lcom/vkontakte/android/ChatBubble$StateColorSpan;,
        Lcom/vkontakte/android/ChatBubble$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field attachImgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "right"    # Z
    .param p4, "photo"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/ChatBubble;->attachImgs:Ljava/util/Vector;

    .line 33
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    .line 34
    if-eqz p3, :cond_3

    const/4 v8, 0x5

    :goto_0
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ChatBubble;->setGravity(I)V

    .line 35
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 36
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const v9, -0xd4a786

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 37
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const v9, -0x7fd4a786

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 38
    iget-object v9, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const v8, 0x7f02007e

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 39
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 41
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 42
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v6, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const/4 v9, 0x7

    invoke-static {v8, v9}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 46
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    :try_start_0
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-direct {p0, v8}, Lcom/vkontakte/android/ChatBubble;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ChatBubble;->setOrientation(I)V

    .line 51
    if-eqz p3, :cond_5

    const/4 v8, 0x5

    :goto_3
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ChatBubble;->setGravity(I)V

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "fl":Landroid/widget/FrameLayout;
    if-eqz p4, :cond_0

    .line 54
    const v8, 0x4205999a    # 33.4f

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 55
    .local v7, "ps":I
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v3, "iv":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v4, "iv1":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const v8, 0x7f020081

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    if-nez p3, :cond_6

    const/high16 v8, 0x40e00000    # 7.0f

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v9, v8

    :goto_4
    const/4 v10, 0x0

    if-eqz p3, :cond_7

    const/high16 v8, 0x40e00000    # 7.0f

    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v8, v11

    float-to-int v8, v8

    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v8, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 66
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x50

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "iv1":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "ps":I
    :cond_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatBubble;->addView(Landroid/view/View;)V

    .line 71
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, "fl2":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_8

    const/4 v8, 0x5

    :goto_6
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    iget-object v8, p0, Lcom/vkontakte/android/ChatBubble;->txt:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p0, v1, v6}, Lcom/vkontakte/android/ChatBubble;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatBubble;->addView(Landroid/view/View;)V

    .line 77
    :cond_2
    if-eqz p3, :cond_9

    const/high16 v8, 0x41a00000    # 20.0f

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    :goto_7
    const/high16 v9, 0x40a00000    # 5.0f

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v9, v10

    float-to-int v10, v9

    if-nez p3, :cond_a

    const/high16 v9, 0x41a00000    # 20.0f

    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v9, v11

    float-to-int v9, v9

    :goto_8
    const/high16 v11, 0x40a00000    # 5.0f

    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {p0, v8, v10, v9, v11}, Lcom/vkontakte/android/ChatBubble;->setPadding(IIII)V

    .line 78
    return-void

    .line 34
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "fl2":Landroid/widget/FrameLayout;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 38
    :cond_4
    const v8, 0x7f02007b

    goto/16 :goto_1

    .line 51
    .restart local v6    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    const/4 v8, 0x3

    goto/16 :goto_3

    .line 65
    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    .restart local v3    # "iv":Landroid/widget/ImageView;
    .restart local v4    # "iv1":Landroid/widget/ImageView;
    .restart local v7    # "ps":I
    :cond_6
    const/4 v8, 0x0

    move v9, v8

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 73
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "iv1":Landroid/widget/ImageView;
    .end local v7    # "ps":I
    .restart local v1    # "fl2":Landroid/widget/FrameLayout;
    .restart local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    const/4 v8, 0x3

    goto :goto_6

    .line 77
    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    goto :goto_8

    .line 49
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "fl2":Landroid/widget/FrameLayout;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v8

    goto/16 :goto_2
.end method

.method private setStateOnGroup(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "pressed"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 91
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 89
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/vkontakte/android/ChatBubble;->setStateOnGroup(Landroid/view/ViewGroup;Z)V

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 13
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p1, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 95
    .local v5, "spans":[Landroid/text/style/URLSpan;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_0

    .line 102
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ImageSpan;

    .line 103
    .local v2, "ispans":[Landroid/text/style/ImageSpan;
    array-length v9, v2

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_1

    .line 109
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v9, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, v8, v7, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 110
    .local v0, "cspans":[Landroid/text/style/ForegroundColorSpan;
    array-length v9, v0

    move v7, v8

    :goto_2
    if-lt v7, v9, :cond_2

    .line 119
    return-object p1

    .line 95
    .end local v0    # "cspans":[Landroid/text/style/ForegroundColorSpan;
    .end local v2    # "ispans":[Landroid/text/style/ImageSpan;
    :cond_0
    aget-object v3, v5, v7

    .line 96
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 97
    .local v6, "start":I
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 98
    .local v1, "end":I
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 99
    new-instance v4, Lcom/vkontakte/android/ChatBubble$URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, p0, v10}, Lcom/vkontakte/android/ChatBubble$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/ChatBubble;Ljava/lang/String;)V

    .line 100
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .local v4, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v4, v6, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "end":I
    .end local v4    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    .restart local v2    # "ispans":[Landroid/text/style/ImageSpan;
    :cond_1
    aget-object v3, v2, v7

    .line 104
    .local v3, "span":Landroid/text/style/ImageSpan;
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 105
    .restart local v6    # "start":I
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 106
    .restart local v1    # "end":I
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v10, p0, Lcom/vkontakte/android/ChatBubble;->attachImgs:Ljava/util/Vector;

    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    .end local v1    # "end":I
    .end local v3    # "span":Landroid/text/style/ImageSpan;
    .end local v6    # "start":I
    .restart local v0    # "cspans":[Landroid/text/style/ForegroundColorSpan;
    :cond_2
    aget-object v4, v0, v7

    .line 111
    .local v4, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    const v11, -0xff0100

    if-ne v10, v11, :cond_3

    .line 112
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 113
    .restart local v6    # "start":I
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 114
    .restart local v1    # "end":I
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 115
    new-instance v3, Lcom/vkontakte/android/ChatBubble$StateColorSpan;

    invoke-virtual {v4}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v10

    invoke-direct {v3, p0, v10}, Lcom/vkontakte/android/ChatBubble$StateColorSpan;-><init>(Lcom/vkontakte/android/ChatBubble;I)V

    .line 116
    .end local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p1, v3, v6, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    .end local v1    # "end":I
    .end local v6    # "start":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    .restart local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    :cond_3
    move-object v3, v4

    .end local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    .restart local v3    # "span":Landroid/text/style/ForegroundColorSpan;
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatBubble;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatBubble;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p0, v1}, Lcom/vkontakte/android/ChatBubble;->setStateOnGroup(Landroid/view/ViewGroup;Z)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/ChatBubble;->attachImgs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 83
    return-void

    .line 81
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ChatBubble;->attachImgs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatBubble;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
