.class public Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "BigVideoViewPostDisplayItem.java"


# instance fields
.field public video:Lcom/vkontakte/android/VideoAttachment;


# direct methods
.method public constructor <init>(IILcom/vkontakte/android/VideoAttachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_video"    # Lcom/vkontakte/android/VideoAttachment;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 16
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkontakte/android/VideoAttachment;

    .line 17
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkontakte/android/VideoAttachment;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xb

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .end local p2    # "reuse":Landroid/view/View;
    :goto_0
    return-object p2

    .restart local p2    # "reuse":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkontakte/android/VideoAttachment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/BigVideoViewPostDisplayItem;->video:Lcom/vkontakte/android/VideoAttachment;

    invoke-virtual {v0, p2, p3, p4}, Lcom/vkontakte/android/VideoAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 43
    return-void
.end method
