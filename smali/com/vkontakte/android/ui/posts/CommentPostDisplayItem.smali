.class public Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "CommentPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public numComments:I

.field public text:Ljava/lang/String;

.field public time:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_text"    # Ljava/lang/String;
    .param p4, "_userName"    # Ljava/lang/String;
    .param p5, "_userPhoto"    # Ljava/lang/String;
    .param p6, "_numComments"    # I
    .param p7, "_time"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 19
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->text:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->userName:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->userPhoto:Ljava/lang/String;

    .line 22
    iput p6, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->numComments:I

    .line 23
    iput p7, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->time:I

    .line 24
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 38
    move-object v1, p2

    .line 39
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 40
    const v2, 0x7f030045

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    new-instance v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;)V

    .line 42
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;
    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->title:Landroid/widget/TextView;

    .line 43
    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    .line 44
    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 45
    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;

    .line 51
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v5, "$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    iget v3, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->time:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget v2, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->numComments:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 55
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0d0010

    iget v4, p0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem;->numComments:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    return-object v1

    .line 57
    :cond_1
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f060183

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;

    .line 70
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 71
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, v0, Lcom/vkontakte/android/ui/posts/CommentPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    const v2, 0x7f020247

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
