.class public Lcom/vkontakte/android/AlbumAttachment;
.super Lcom/vkontakte/android/PhotoAttachment;
.source "AlbumAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;
    }
.end annotation


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
    .locals 0
    .param p1, "_images"    # [Lcom/vkontakte/android/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_size"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    .line 32
    iput p6, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    .line 33
    return-void
.end method


# virtual methods
.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    new-instance v0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;-><init>(Lcom/vkontakte/android/AlbumAttachment;Landroid/content/Context;)V

    .line 38
    .local v0, "iv":Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;
    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setTag(Ljava/lang/Object;)V

    .line 39
    const v2, 0x7f020208

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setImageResource(I)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setId(I)V

    .line 43
    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->hasSize:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayW:I

    if-nez v2, :cond_0

    const/16 v2, 0x87

    iput v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayW:I

    .line 45
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayH:I

    if-nez v2, :cond_1

    const/16 v2, 0x64

    iput v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayH:I

    .line 46
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setMinimumHeight(I)V

    .line 47
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setMaxHeight(I)V

    .line 48
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setMinimumWidth(I)V

    .line 49
    iget v2, p0, Lcom/vkontakte/android/AlbumAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setMaxWidth(I)V

    .line 50
    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->breakAfter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->floating:Z

    if-eqz v2, :cond_3

    .line 51
    :cond_2
    new-instance v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->breakAfter:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 53
    iget-boolean v2, p0, Lcom/vkontakte/android/AlbumAttachment;->floating:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 54
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .end local v1    # "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_3
    new-instance v2, Lcom/vkontakte/android/AlbumAttachment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AlbumAttachment$1;-><init>(Lcom/vkontakte/android/AlbumAttachment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-object v0

    .line 43
    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    invoke-super {p0, p1}, Lcom/vkontakte/android/PhotoAttachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/vkontakte/android/AlbumAttachment;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 119
    return-void
.end method
