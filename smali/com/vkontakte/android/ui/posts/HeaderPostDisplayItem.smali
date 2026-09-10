.class public Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "HeaderPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public menuClickListener:Landroid/view/View$OnClickListener;

.field private photoOnClick:Landroid/view/View$OnClickListener;

.field public photosMode:Z

.field public post:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;Z)V
    .locals 2
    .param p1, "_post"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "_photosMode"    # Z

    .prologue
    .line 28
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 29
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 31
    new-instance v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/16 v12, 0x200

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    move-object v5, p2

    .line 54
    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 55
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    if-eqz v6, :cond_4

    const v6, 0x7f03004c

    :goto_0
    invoke-static {p1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 56
    new-instance v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    invoke-direct {v2, v7}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;)V

    .line 57
    .local v2, "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    const v6, 0x7f0800e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 58
    const v6, 0x7f0800e6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 59
    const v6, 0x7f0800e3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 60
    const v6, 0x7f0800ee

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    .line 61
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    if-eqz v6, :cond_5

    const v6, 0x7f0800ef

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :goto_1
    iput-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    .line 62
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_0
    const-string v3, ""

    .line 68
    .local v3, "infoHtml":Ljava/lang/CharSequence;
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    if-eqz v6, :cond_6

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f0d0040

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    const-string v7, "F"

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 78
    .local v4, "sp":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v6, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f020194

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v10, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v1, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v4, v6, v10, v11, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 81
    const-string v6, " "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    move-object v3, v0

    .line 86
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 87
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 90
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_3
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v5

    .line 55
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    .end local v3    # "infoHtml":Ljava/lang/CharSequence;
    :cond_4
    const v6, 0x7f03004b

    goto/16 :goto_0

    .line 61
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_5
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 71
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    .restart local v3    # "infoHtml":Ljava/lang/CharSequence;
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 78
    .restart local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "sp":Landroid/text/Spannable;
    :cond_7
    const v6, 0x7f020197

    goto :goto_3
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 105
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 106
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v1, :cond_1

    const v1, 0x7f020247

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200d7

    goto :goto_1
.end method
