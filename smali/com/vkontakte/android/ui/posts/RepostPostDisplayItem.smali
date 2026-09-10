.class public Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "RepostPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field public origID:I

.field private post:Lcom/vkontakte/android/NewsEntry;

.field public repostType:I

.field public time:I

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkontakte/android/NewsEntry;)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_userName"    # Ljava/lang/String;
    .param p4, "_userPhoto"    # Ljava/lang/String;
    .param p5, "_uid"    # I
    .param p6, "_time"    # I
    .param p7, "_origID"    # I
    .param p8, "_repostType"    # I
    .param p9, "_post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 24
    new-instance v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    .line 44
    iput p6, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->time:I

    .line 45
    iput p7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->origID:I

    .line 46
    iput p8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    .line 47
    iput-object p9, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 48
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    move-object v6, p2

    .line 63
    .local v6, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 64
    const v7, 0x7f030064

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 65
    new-instance v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;)V

    .line 66
    .local v2, "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    const v7, 0x7f090110

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 67
    const v7, 0x7f090115

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 68
    const v7, 0x7f09010a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 73
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, "type":Ljava/lang/String;
    iget v7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    if-ne v7, v11, :cond_1

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_1
    iget v7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_2
    iget v7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08011b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_4

    const-string v5, ""

    .end local v5    # "type":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "infoHtml":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->platform:I

    if-eqz v7, :cond_5

    .line 89
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v7

    const-string v8, "F"

    invoke-virtual {v7, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 91
    .local v4, "sp":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/NewsEntry;->getPlatformIconResource()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v1, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v4, v7, v10, v11, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 94
    const-string v7, " "

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    move-object v3, v0

    .line 99
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_5
    iget-object v7, v2, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object v6
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 112
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 113
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    if-lez v1, :cond_1

    const v1, 0x7f02027c

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200e3

    goto :goto_1
.end method
