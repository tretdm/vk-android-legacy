.class public abstract Lcom/vkontakte/android/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static reusableViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;
    .locals 15
    .param p0, "is"    # Ljava/io/DataInputStream;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 89
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 36
    :pswitch_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 37
    .local v12, "nImgs":I
    new-array v1, v12, [Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 38
    .local v1, "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-lt v11, v12, :cond_0

    .line 41
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v11

    .line 38
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 44
    .end local v1    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v11    # "i":I
    .end local v12    # "nImgs":I
    :pswitch_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 45
    .restart local v12    # "nImgs":I
    new-array v1, v12, [Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 46
    .restart local v1    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-lt v11, v12, :cond_1

    .line 49
    new-instance v0, Lcom/vkontakte/android/AlbumAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V

    move-object v2, v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v11

    .line 46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 52
    .end local v1    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v11    # "i":I
    .end local v12    # "nImgs":I
    :pswitch_3
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 54
    :pswitch_4
    new-instance v2, Lcom/vkontakte/android/AudioAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/AudioAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 56
    :pswitch_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 57
    .local v14, "t":I
    if-nez v14, :cond_2

    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/vkontakte/android/VideoAttachment;

    invoke-static {p0}, Lcom/vkontakte/android/api/VideoFile;->createFromStream(Ljava/io/DataInputStream;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    goto/16 :goto_0

    .line 59
    .end local v14    # "t":I
    :pswitch_6
    new-instance v2, Lcom/vkontakte/android/DocumentAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 61
    :pswitch_7
    new-instance v2, Lcom/vkontakte/android/LinkAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :pswitch_8
    new-instance v2, Lcom/vkontakte/android/SignatureLinkAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :pswitch_9
    new-instance v2, Lcom/vkontakte/android/PollAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 67
    :pswitch_a
    new-instance v2, Lcom/vkontakte/android/NoteAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/vkontakte/android/NoteAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 69
    :pswitch_b
    new-instance v2, Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/vkontakte/android/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :pswitch_c
    new-instance v2, Lcom/vkontakte/android/WikiAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/vkontakte/android/WikiAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 73
    :pswitch_d
    new-instance v2, Lcom/vkontakte/android/PostAttachment;

    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsEntry;-><init>(Ljava/io/DataInputStream;)V

    invoke-direct {v2, v0}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 75
    :pswitch_e
    new-instance v2, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 77
    :pswitch_f
    new-instance v13, Lcom/vkontakte/android/StickerAttachment;

    invoke-direct {v13}, Lcom/vkontakte/android/StickerAttachment;-><init>()V

    .line 78
    .local v13, "sa":Lcom/vkontakte/android/StickerAttachment;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v13, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 79
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v13, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 80
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    iget-object v0, v13, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v0, v0

    if-lt v11, v0, :cond_3

    .line 82
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v13, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 83
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, v13, Lcom/vkontakte/android/StickerAttachment;->height:I

    move-object v2, v13

    .line 84
    goto/16 :goto_0

    .line 81
    :cond_3
    iget-object v0, v13, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 87
    .end local v11    # "i":I
    .end local v13    # "sa":Lcom/vkontakte/android/StickerAttachment;
    :pswitch_10
    new-instance v2, Lcom/vkontakte/android/RepostAttachment;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_e
        :pswitch_8
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 281
    .local v1, "t":J
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 288
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 291
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 328
    :cond_2
    :goto_1
    return-object v3

    .line 285
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 294
    :cond_4
    const-string v4, "common"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 295
    const v4, 0x7f030058

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 298
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    const-string v4, "signature"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 299
    const v4, 0x7f030059

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 300
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 302
    .end local v3    # "v":Landroid/view/View;
    :cond_6
    const-string v4, "audio"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 304
    new-instance v3, Lcom/vkontakte/android/AudioAttachView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioAttachView;-><init>(Landroid/content/Context;)V

    .line 305
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 307
    .end local v3    # "v":Landroid/view/View;
    :cond_7
    const-string v4, "album"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 308
    const v4, 0x7f030017

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 309
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    .end local v3    # "v":Landroid/view/View;
    :cond_8
    const-string v4, "video"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 312
    const v4, 0x7f03001e

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 313
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 315
    .end local v3    # "v":Landroid/view/View;
    :cond_9
    const-string v4, "photo"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 316
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    const-string v4, "doc_thumb"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 320
    const v4, 0x7f030019

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocAttachView;

    .line 321
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 323
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    const-string v4, "repost"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    const v4, 0x7f03006e

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 325
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;
    .locals 26
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "oid"    # I

    .prologue
    .line 94
    :try_start_0
    const-string v3, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 95
    .local v20, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 96
    .local v11, "att":Lorg/json/JSONObject;
    const-string v3, "photo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "sizes"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 98
    .local v18, "sizes":Lorg/json/JSONArray;
    if-eqz v18, :cond_0

    .line 99
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v4, Lcom/vkontakte/android/Photo;

    invoke-direct {v4, v11}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    .line 264
    .end local v11    # "att":Lorg/json/JSONObject;
    .end local v18    # "sizes":Lorg/json/JSONArray;
    .end local v20    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 101
    .restart local v11    # "att":Lorg/json/JSONObject;
    .restart local v18    # "sizes":Lorg/json/JSONArray;
    .restart local v20    # "type":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v4, 0x0

    .line 102
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x6d

    const-string v7, "src"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 103
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x78

    const-string v7, "src_big"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 104
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x79

    const-string v7, "src_xbig"

    const/4 v8, 0x0

    invoke-virtual {v11, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    .line 105
    const-string v4, "owner_id"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    const-string v6, "gid"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "aid"

    const/4 v7, -0x7

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "text"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_id"

    const-string v9, "owner_id"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "created"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "access_key"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v11, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-direct/range {v2 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 108
    .end local v18    # "sizes":Lorg/json/JSONArray;
    :cond_1
    const-string v3, "graffiti"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const-string v3, "photo_200"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_586"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 110
    .local v2, "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0xc8

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 111
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x64

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 112
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x24a

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 113
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x125

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    move-object v3, v2

    .line 114
    goto/16 :goto_0

    .line 116
    .end local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_2
    const-string v3, "posted_photo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const-string v3, "photo_130"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_604"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 118
    .restart local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x82

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 119
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x62

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 120
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x25c

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 121
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x1e0

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    move-object v3, v2

    .line 122
    goto/16 :goto_0

    .line 124
    .end local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_3
    const-string v3, "album"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    const-string v3, "thumb"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sizes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 126
    .restart local v18    # "sizes":Lorg/json/JSONArray;
    if-eqz v18, :cond_6

    .line 127
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v15, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v12, v3, :cond_5

    .line 132
    new-instance v3, Lcom/vkontakte/android/AlbumAttachment;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v5, "owner_id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pid"

    const/4 v7, -0x1

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "id"

    const/4 v8, -0x7

    invoke-virtual {v11, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "title"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    .end local v11    # "att":Lorg/json/JSONObject;
    .end local v12    # "i":I
    .end local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v18    # "sizes":Lorg/json/JSONArray;
    .end local v20    # "type":Ljava/lang/String;
    :catch_0
    move-exception v24

    .line 261
    .local v24, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .end local v24    # "x":Ljava/lang/Exception;
    :cond_4
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attachment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v11    # "att":Lorg/json/JSONObject;
    .restart local v12    # "i":I
    .restart local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v18    # "sizes":Lorg/json/JSONArray;
    .restart local v20    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 130
    .local v19, "so":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v4, "type"

    const-string v5, "?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "src"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "width"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "height"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 134
    .end local v12    # "i":I
    .end local v15    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v19    # "so":Lorg/json/JSONObject;
    :cond_6
    new-instance v3, Lcom/vkontakte/android/AlbumAttachment;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v5, 0x0

    .line 135
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x6d

    const-string v8, "thumb"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 136
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x78

    const-string v8, "thumb"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src_big"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 137
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x79

    const-string v8, "thumb"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src_xbig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    .line 138
    const-string v5, "owner_id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pid"

    const-string v7, "gid"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "aid"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "title"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 134
    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 141
    .end local v18    # "sizes":Lorg/json/JSONArray;
    :cond_7
    const-string v3, "app"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 142
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    const-string v4, "src"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 144
    :cond_8
    const-string v3, "audio"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 145
    new-instance v3, Lcom/vkontakte/android/AudioAttachment;

    new-instance v4, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v4, v11}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    goto/16 :goto_0

    .line 147
    :cond_9
    const-string v3, "video"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 148
    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    new-instance v4, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v4, v11}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    goto/16 :goto_0

    .line 150
    :cond_a
    const-string v3, "doc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 152
    new-instance v3, Lcom/vkontakte/android/DocumentAttachment;

    new-instance v4, Lcom/vkontakte/android/api/Document;

    invoke-direct {v4, v11}, Lcom/vkontakte/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    goto/16 :goto_0

    .line 154
    :cond_b
    const-string v3, "gift"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 155
    new-instance v3, Lcom/vkontakte/android/DocumentAttachment;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "thumb_256"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 157
    :cond_c
    const-string v3, "link"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 158
    new-instance v3, Lcom/vkontakte/android/LinkAttachment;

    const-string v4, "url"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_d
    const-string v3, "poll"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 161
    new-instance v3, Lcom/vkontakte/android/PollAttachment;

    const-string v4, "question"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v0, p1

    invoke-direct {v3, v4, v0, v5}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 163
    :cond_e
    const-string v3, "note"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 164
    new-instance v3, Lcom/vkontakte/android/NoteAttachment;

    const-string v4, "title"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vkontakte/android/NoteAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 166
    :cond_f
    const-string v3, "page"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 167
    new-instance v3, Lcom/vkontakte/android/WikiAttachment;

    const-string v4, "title"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "section"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    const-string v7, "page_id"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/WikiAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 169
    :cond_10
    const-string v3, "wall"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 170
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "POST: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "copy_post_id"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 172
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v17, v0

    .line 173
    .local v17, "post":[Lcom/vkontakte/android/NewsEntry;
    new-instance v3, Lcom/vkontakte/android/api/WallGetById;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "to_id"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 174
    new-instance v4, Lcom/vkontakte/android/Attachment$1;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/vkontakte/android/Attachment$1;-><init>([Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 186
    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    const/4 v4, 0x0

    aget-object v4, v17, v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 188
    .end local v17    # "post":[Lcom/vkontakte/android/NewsEntry;
    :cond_11
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v16, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v3, "from"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 190
    .local v22, "users1":Lorg/json/JSONArray;
    const-string v3, "copy_owner"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 191
    .local v23, "users2":Lorg/json/JSONArray;
    if-eqz v22, :cond_12

    .line 192
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v12, v3, :cond_14

    .line 211
    .end local v12    # "i":I
    :cond_12
    if-eqz v23, :cond_13

    .line 212
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v12, v3, :cond_1b

    .line 226
    .end local v12    # "i":I
    :cond_13
    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    new-instance v4, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v16

    invoke-direct {v4, v11, v13, v0}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 193
    .restart local v12    # "i":I
    :cond_14
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 194
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 195
    .local v21, "uid":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "first_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 196
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "first_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "last_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_16

    const-string v3, "photo_100"

    :goto_5
    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 198
    :cond_15
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 200
    :cond_16
    const-string v3, "photo_50"

    goto :goto_5

    .line 201
    .end local v21    # "uid":I
    :cond_17
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 202
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 203
    .restart local v21    # "uid":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "first_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "last_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18

    const-string v3, "photo_medium_rec"

    :goto_7
    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_18
    const-string v3, "photo_rec"

    goto :goto_7

    .line 206
    .end local v21    # "uid":I
    :cond_19
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "gid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    neg-int v0, v3

    move/from16 v21, v0

    .line 207
    .restart local v21    # "uid":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1a

    const-string v3, "photo_100"

    :goto_8
    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1a
    const-string v3, "photo_50"

    goto :goto_8

    .line 213
    .end local v21    # "uid":I
    :cond_1b
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 214
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 215
    .restart local v21    # "uid":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "first_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "last_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1d

    const-string v3, "photo_medium_rec"

    :goto_9
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 217
    .local v14, "ph":Ljava/lang/String;
    if-nez v14, :cond_1c

    .line 218
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1e

    const-string v3, "photo_100"

    :goto_a
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 219
    :cond_1c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v14    # "ph":Ljava/lang/String;
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 216
    :cond_1d
    const-string v3, "photo_rec"

    goto :goto_9

    .line 218
    .restart local v14    # "ph":Ljava/lang/String;
    :cond_1e
    const-string v3, "photo_50"

    goto :goto_a

    .line 221
    .end local v14    # "ph":Ljava/lang/String;
    .end local v21    # "uid":I
    :cond_1f
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "gid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    neg-int v0, v3

    move/from16 v21, v0

    .line 222
    .restart local v21    # "uid":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_20

    const-string v3, "photo"

    :goto_c
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_20
    const-string v3, "photo_medium"

    goto :goto_c

    .line 228
    .end local v12    # "i":I
    .end local v13    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v16    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "uid":I
    .end local v22    # "users1":Lorg/json/JSONArray;
    .end local v23    # "users2":Lorg/json/JSONArray;
    :cond_21
    const-string v3, "sticker"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    new-instance v3, Lcom/vkontakte/android/StickerAttachment;

    const-string v4, "id"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo_64"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "photo_128"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "photo_256"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "width"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "height"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/StickerAttachment;-><init>(I[Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;
    .locals 12
    .param p0, "j"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 268
    const-string v0, "coordinates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "coords":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, "c2":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .local v1, "lat":D
    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 271
    .local v3, "lon":D
    const-string v0, "place"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v11, Lcom/vkontakte/android/GeoPlace;

    const-string v0, "place"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    .line 273
    .local v11, "place":Lcom/vkontakte/android/GeoPlace;
    new-instance v0, Lcom/vkontakte/android/GeoAttachment;

    iget-object v5, v11, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    iget-object v6, v11, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    iget v7, v11, Lcom/vkontakte/android/GeoPlace;->id:I

    iget-object v8, v11, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .end local v11    # "place":Lcom/vkontakte/android/GeoPlace;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vkontakte/android/GeoAttachment;

    const/4 v7, -0x1

    move-object v6, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static reuseView(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v0, "photo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 337
    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    :cond_1
    const-string v0, "doc_thumb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    check-cast p0, Lcom/vkontakte/android/DocAttachView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->reset()V

    .line 342
    :cond_2
    return-void
.end method

.method public static sort(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v3, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 359
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    return-void

    .line 346
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 347
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v7, :cond_1

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_1
    instance-of v7, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v7, :cond_2

    .line 350
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_2
    instance-of v7, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_3

    .line 352
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_3
    instance-of v7, v0, Lcom/vkontakte/android/AudioAttachment;

    if-nez v7, :cond_4

    instance-of v7, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-nez v7, :cond_4

    instance-of v7, v0, Lcom/vkontakte/android/PollAttachment;

    if-eqz v7, :cond_5

    .line 354
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract getFullView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
.end method

.method public abstract serialize(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
