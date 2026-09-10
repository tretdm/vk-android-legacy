.class public Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "TextPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public gray:Z

.field public text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_text"    # Ljava/lang/CharSequence;
    .param p4, "_gray"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 18
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    .line 19
    iput-boolean p4, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->gray:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 34
    move-object v1, p2

    .line 35
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 36
    const v2, 0x7f03004e

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;)V

    .line 38
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;

    .line 43
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->gray:Z

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    const/high16 v3, 0x55000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :goto_0
    return-object v1

    .line 47
    :cond_1
    iget-object v2, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 61
    return-void
.end method
