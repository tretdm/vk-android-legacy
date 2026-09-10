.class public Lcom/vkontakte/android/AlbumAttachment;
.super Lcom/vkontakte/android/PhotoAttachment;
.source "AlbumAttachment.java"


# instance fields
.field public size:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;IIILjava/lang/String;I)V
    .locals 0
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/PhotoAttachment$Image;",
            ">;III",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "_images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/util/HashMap;IIILjava/lang/String;)V

    .line 28
    iput p6, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    .line 29
    return-void
.end method

.method public constructor <init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V
    .locals 11
    .param p1, "_images"    # [Lcom/vkontakte/android/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_size"    # I

    .prologue
    .line 31
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    .line 32
    move/from16 v0, p6

    iput v0, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    .line 33
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xd0d0e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const v8, 0x7f09001d

    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/PhotoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "iv":Landroid/view/View;
    new-instance v2, Lcom/vkontakte/android/AlbumAttachment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AlbumAttachment$1;-><init>(Lcom/vkontakte/android/AlbumAttachment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    .line 54
    const-string v2, "album"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0019

    iget v6, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 57
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 58
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    move-object v2, v1

    .line 59
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v2, v1

    .line 60
    check-cast v2, Lcom/vkontakte/android/ui/FixedSizeFrameLayout;

    iget v6, p0, Lcom/vkontakte/android/AlbumAttachment;->displayW:I

    iget v7, p0, Lcom/vkontakte/android/AlbumAttachment;->displayH:I

    iget-boolean v3, p0, Lcom/vkontakte/android/AlbumAttachment;->paddingAfter:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v2, v6, v3}, Lcom/vkontakte/android/ui/FixedSizeFrameLayout;->setSize(II)V

    .line 61
    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->paddingAfter:Z

    if-eqz v2, :cond_2

    :goto_1
    int-to-float v2, v4

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xd0d0e

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-object v1

    :cond_1
    move v3, v5

    .line 60
    goto :goto_0

    :cond_2
    move v4, v5

    .line 61
    goto :goto_1
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 71
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    iget v3, p0, Lcom/vkontakte/android/AlbumAttachment;->oid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget v3, p0, Lcom/vkontakte/android/AlbumAttachment;->pid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    iget v3, p0, Lcom/vkontakte/android/AlbumAttachment;->aid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 86
    iget v3, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    return-void

    .line 72
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/AlbumAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 74
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 75
    iget-object v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 76
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v1    # "k":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    const v1, 0x7f09001d

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    if-nez p3, :cond_0

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkontakte/android/AlbumAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AlbumAttachment;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
