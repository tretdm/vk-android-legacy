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

.field public repostType:I

.field public time:I

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_userName"    # Ljava/lang/String;
    .param p4, "_userPhoto"    # Ljava/lang/String;
    .param p5, "_uid"    # I
    .param p6, "_time"    # I
    .param p7, "_origID"    # I
    .param p8, "_repostType"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 19
    new-instance v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    .line 33
    iput p6, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->time:I

    .line 34
    iput p7, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->origID:I

    .line 35
    iput p8, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    .line 36
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x3

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 50
    move-object v1, p2

    .line 51
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 52
    const v2, 0x7f03004d

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    new-instance v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;)V

    .line 54
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    const v2, 0x7f0800e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0800ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 61
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v3, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->repostType:I

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-object v1

    .line 63
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 76
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 77
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkontakte/android/ui/posts/RepostPostDisplayItem;->uid:I

    if-lez v1, :cond_1

    const v1, 0x7f020247

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200d7

    goto :goto_1
.end method
