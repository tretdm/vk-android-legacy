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

.field public showMenu:Z


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;Z)V
    .locals 2
    .param p1, "_post"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "_photosMode"    # Z

    .prologue
    .line 30
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    .line 31
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 33
    new-instance v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 55
    move-object v6, p2

    .line 56
    .local v6, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 57
    const v7, 0x7f030062

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 58
    new-instance v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;)V

    .line 59
    .local v2, "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    const v7, 0x7f09010e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 60
    const v7, 0x7f09010f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 61
    const v7, 0x7f09010c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 62
    const v7, 0x7f090116

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    .line 63
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    .line 64
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_0
    const-string v3, ""

    .line 68
    .local v3, "infoHtml":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, v7, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 70
    .local v4, "name":Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photosMode:Z

    if-eqz v7, :cond_8

    .line 71
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-boolean v7, v7, Lcom/vkontakte/android/NewsEntry;->f:Z

    if-eqz v7, :cond_6

    const v7, 0x7f0d005e

    :goto_0
    iget-object v9, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v9, v9, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x200

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    const-string v8, "F"

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v5

    .line 84
    .local v5, "sp":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v9, 0x200

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f0201b5

    :goto_2
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 85
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    new-instance v7, Landroid/text/style/ImageSpan;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 87
    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    move-object v4, v0

    .line 92
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->platform:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .restart local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    const-string v8, "F"

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v5

    .line 95
    .restart local v5    # "sp":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/NewsEntry;->getPlatformIconResource()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    new-instance v7, Landroid/text/style/ImageSpan;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 98
    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    move-object v3, v0

    .line 103
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 104
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 107
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v8, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->menuBtn:Landroid/view/View;

    iget-boolean v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_4
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->profileBtn:Landroid/view/View;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->photoOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v7, :cond_5

    .line 114
    const-string v7, "view_post"

    invoke-static {v7}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->collapse()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->unique()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v7

    const-string v8, "post_ids"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v10, v10, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v10, v10, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string v9, "repost_ids"

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v10, v10, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v10, v10, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v8, v9, v7}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->commit()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 117
    :cond_5
    return-object v6

    .line 72
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_6
    const v7, 0x7f0d005d

    goto/16 :goto_0

    .line 74
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0d0040

    iget-object v9, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v9, v9, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    goto/16 :goto_1

    .line 76
    :cond_8
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 84
    .restart local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .restart local v5    # "sp":Landroid/text/Spannable;
    :cond_9
    const v7, 0x7f0201b8

    goto/16 :goto_2

    .line 108
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v5    # "sp":Landroid/text/Spannable;
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    :cond_a
    const/4 v7, 0x4

    goto/16 :goto_3

    .line 114
    :cond_b
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;

    .line 128
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 129
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/HeaderPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v1, :cond_1

    const v1, 0x7f02027c

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200e3

    goto :goto_1
.end method
