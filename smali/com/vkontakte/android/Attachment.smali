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
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;
    .locals 17
    .param p0, "is"    # Ljava/io/DataInputStream;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 93
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 37
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 38
    .local v13, "nImgs":I
    new-array v2, v13, [Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 39
    .local v2, "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v13, :cond_0

    .line 42
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    move-object v3, v1

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v1, v2, v12

    .line 39
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 45
    .end local v2    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v12    # "i":I
    .end local v13    # "nImgs":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 46
    .restart local v13    # "nImgs":I
    new-array v2, v13, [Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 47
    .restart local v2    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    if-lt v12, v13, :cond_1

    .line 50
    new-instance v1, Lcom/vkontakte/android/AlbumAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V

    move-object v3, v1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v1, v2, v12

    .line 47
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 53
    .end local v2    # "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v12    # "i":I
    .end local v13    # "nImgs":I
    :pswitch_3
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 55
    :pswitch_4
    new-instance v3, Lcom/vkontakte/android/AudioAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/AudioAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 57
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 58
    .local v15, "t":I
    if-nez v15, :cond_2

    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    move-object/from16 v16, v3

    .line 59
    .local v16, "va":Lcom/vkontakte/android/VideoAttachment;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    move-object/from16 v3, v16

    .line 60
    goto/16 :goto_0

    .line 58
    .end local v16    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_2
    new-instance v16, Lcom/vkontakte/android/VideoAttachment;

    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/api/VideoFile;->createFromStream(Ljava/io/DataInputStream;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_3

    .line 63
    .end local v15    # "t":I
    :pswitch_6
    new-instance v3, Lcom/vkontakte/android/DocumentAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 65
    :pswitch_7
    new-instance v3, Lcom/vkontakte/android/LinkAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :pswitch_8
    new-instance v3, Lcom/vkontakte/android/SignatureLinkAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :pswitch_9
    new-instance v3, Lcom/vkontakte/android/PollAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 71
    :pswitch_a
    new-instance v3, Lcom/vkontakte/android/NoteAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lcom/vkontakte/android/NoteAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 73
    :pswitch_b
    new-instance v3, Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lcom/vkontakte/android/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_c
    new-instance v3, Lcom/vkontakte/android/WikiAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/vkontakte/android/WikiAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 77
    :pswitch_d
    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/vkontakte/android/NewsEntry;-><init>(Ljava/io/DataInputStream;)V

    invoke-direct {v3, v1}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 79
    :pswitch_e
    new-instance v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 81
    :pswitch_f
    new-instance v14, Lcom/vkontakte/android/StickerAttachment;

    invoke-direct {v14}, Lcom/vkontakte/android/StickerAttachment;-><init>()V

    .line 82
    .local v14, "sa":Lcom/vkontakte/android/StickerAttachment;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v14, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 83
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v14, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 84
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    iget-object v1, v14, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v1, v1

    if-lt v12, v1, :cond_3

    .line 86
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v14, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 87
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v14, Lcom/vkontakte/android/StickerAttachment;->height:I

    move-object v3, v14

    .line 88
    goto/16 :goto_0

    .line 85
    :cond_3
    iget-object v1, v14, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    .line 84
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 91
    .end local v12    # "i":I
    .end local v14    # "sa":Lcom/vkontakte/android/StickerAttachment;
    :pswitch_10
    new-instance v3, Lcom/vkontakte/android/RepostAttachment;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 35
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

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, "t":J
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 329
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
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

    .line 335
    sget-object v4, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 338
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

    .line 375
    :cond_2
    :goto_1
    return-object v3

    .line 332
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 341
    :cond_4
    const-string v4, "common"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    const v4, 0x7f030072

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 343
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    const-string v4, "signature"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    const v4, 0x7f030073

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 347
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 349
    .end local v3    # "v":Landroid/view/View;
    :cond_6
    const-string v4, "audio"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 351
    new-instance v3, Lcom/vkontakte/android/AudioAttachView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioAttachView;-><init>(Landroid/content/Context;)V

    .line 352
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 354
    .end local v3    # "v":Landroid/view/View;
    :cond_7
    const-string v4, "album"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 355
    const v4, 0x7f030017

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 356
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 358
    .end local v3    # "v":Landroid/view/View;
    :cond_8
    const-string v4, "video"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 359
    const v4, 0x7f030020

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 360
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    .end local v3    # "v":Landroid/view/View;
    :cond_9
    const-string v4, "photo"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 363
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;-><init>(Landroid/content/Context;)V

    .line 364
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 366
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    const-string v4, "doc_thumb"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 367
    const v4, 0x7f030019

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocAttachView;

    .line 368
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 370
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    const-string v4, "repost"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    const v4, 0x7f030096

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 372
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;
    .locals 31
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    :try_start_0
    const-string v3, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 99
    .local v26, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 100
    .local v12, "att":Lorg/json/JSONObject;
    const-string v3, "photo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const-string v3, "sizes"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 102
    .local v24, "sizes":Lorg/json/JSONArray;
    if-eqz v24, :cond_0

    .line 103
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    new-instance v4, Lcom/vkontakte/android/Photo;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    .line 311
    .end local v12    # "att":Lorg/json/JSONObject;
    .end local v24    # "sizes":Lorg/json/JSONArray;
    .end local v26    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 105
    .restart local v12    # "att":Lorg/json/JSONObject;
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    .restart local v26    # "type":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v4, 0x0

    .line 106
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x6d

    const-string v7, "src"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 107
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x78

    const-string v7, "src_big"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 108
    new-instance v5, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v6, 0x79

    const-string v7, "src_xbig"

    const/4 v8, 0x0

    invoke-virtual {v12, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v5, v3, v4

    .line 109
    const-string v4, "owner_id"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    const-string v6, "gid"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v12, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "aid"

    const/4 v7, -0x7

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "text"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "user_id"

    const-string v9, "owner_id"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v12, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "created"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "access_key"

    const-string v11, ""

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 105
    invoke-direct/range {v2 .. v11}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    move-object v3, v2

    goto :goto_0

    .line 112
    .end local v24    # "sizes":Lorg/json/JSONArray;
    :cond_1
    const-string v3, "graffiti"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const-string v3, "photo_200"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_586"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 114
    .local v2, "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0xc8

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 115
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x64

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 116
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x24a

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 117
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x125

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    move-object v3, v2

    .line 118
    goto/16 :goto_0

    .line 120
    .end local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_2
    const-string v3, "posted_photo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment;

    const-string v3, "photo_130"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_604"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 122
    .restart local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x82

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 123
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x62

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 124
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x25c

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 125
    iget-object v3, v2, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v4, 0x1e0

    iput v4, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    move-object v3, v2

    .line 126
    goto/16 :goto_0

    .line 128
    .end local v2    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_3
    const-string v3, "album"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    const-string v3, "thumb"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sizes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 130
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    if-eqz v24, :cond_6

    .line 131
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v21, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v13, v3, :cond_5

    .line 136
    new-instance v3, Lcom/vkontakte/android/AlbumAttachment;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pid"

    const/4 v7, -0x1

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "id"

    const/4 v8, -0x7

    invoke-virtual {v12, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "title"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 307
    .end local v12    # "att":Lorg/json/JSONObject;
    .end local v13    # "i":I
    .end local v21    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v24    # "sizes":Lorg/json/JSONArray;
    .end local v26    # "type":Ljava/lang/String;
    :catch_0
    move-exception v30

    .line 308
    .local v30, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .end local v30    # "x":Ljava/lang/Exception;
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

    .line 311
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v12    # "att":Lorg/json/JSONObject;
    .restart local v13    # "i":I
    .restart local v21    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    .restart local v26    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 134
    .local v25, "so":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v4, "type"

    const-string v5, "?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "src"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "width"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "height"

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 138
    .end local v13    # "i":I
    .end local v21    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v25    # "so":Lorg/json/JSONObject;
    :cond_6
    new-instance v3, Lcom/vkontakte/android/AlbumAttachment;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v5, 0x0

    .line 139
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x6d

    const-string v8, "thumb"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 140
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x78

    const-string v8, "thumb"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src_big"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 141
    new-instance v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v7, 0x79

    const-string v8, "thumb"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "src_xbig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v6, v4, v5

    .line 142
    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pid"

    const-string v7, "gid"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "aid"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "title"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "size"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 138
    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/AlbumAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 145
    .end local v24    # "sizes":Lorg/json/JSONArray;
    :cond_7
    const-string v3, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    new-instance v3, Lcom/vkontakte/android/PhotoAttachment;

    const-string v4, "src"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 148
    :cond_8
    const-string v3, "audio"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    new-instance v3, Lcom/vkontakte/android/AudioAttachment;

    new-instance v4, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    const-string v3, "video"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 152
    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    new-instance v4, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    goto/16 :goto_0

    .line 154
    :cond_a
    const-string v3, "doc"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 156
    new-instance v3, Lcom/vkontakte/android/DocumentAttachment;

    new-instance v4, Lcom/vkontakte/android/api/Document;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    goto/16 :goto_0

    .line 158
    :cond_b
    const-string v3, "gift"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 159
    new-instance v3, Lcom/vkontakte/android/DocumentAttachment;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "thumb_256"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 161
    :cond_c
    const-string v3, "link"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 162
    new-instance v3, Lcom/vkontakte/android/LinkAttachment;

    const-string v4, "url"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preview_page"

    const-string v7, ""

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_d
    const-string v3, "poll"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 165
    new-instance v3, Lcom/vkontakte/android/PollAttachment;

    const-string v4, "question"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 167
    :cond_e
    const-string v3, "note"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 168
    new-instance v3, Lcom/vkontakte/android/NoteAttachment;

    const-string v4, "title"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "id"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vkontakte/android/NoteAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 170
    :cond_f
    const-string v3, "page"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 171
    new-instance v3, Lcom/vkontakte/android/WikiAttachment;

    const-string v4, "title"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "section"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    const-string v7, "page_id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/WikiAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 173
    :cond_10
    const-string v3, "wall"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 175
    const-string v3, "copy_post_id"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "copy_history"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 176
    :cond_11
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    .line 177
    .local v23, "post":[Lcom/vkontakte/android/NewsEntry;
    new-instance v3, Lcom/vkontakte/android/api/WallGetById;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "to_id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 178
    new-instance v4, Lcom/vkontakte/android/Attachment$1;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/vkontakte/android/Attachment$1;-><init>([Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 190
    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    const/4 v4, 0x0

    aget-object v4, v23, v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 192
    .end local v23    # "post":[Lcom/vkontakte/android/NewsEntry;
    :cond_12
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .local v16, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v22, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v3, "from"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 194
    .local v28, "users1":Lorg/json/JSONObject;
    const-string v3, "copy_owner"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 195
    .local v29, "users2":Lorg/json/JSONObject;
    if-eqz v28, :cond_13

    .line 196
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lt v13, v3, :cond_15

    .line 216
    .end local v13    # "i":I
    :cond_13
    if-eqz v29, :cond_14

    .line 217
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lt v13, v3, :cond_1d

    .line 236
    .end local v13    # "i":I
    :cond_14
    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    new-instance v4, Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v4, v12, v0, v1}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    goto/16 :goto_0

    .line 197
    .restart local v13    # "i":I
    :cond_15
    const-string v3, "id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 198
    const-string v3, "id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 199
    .local v27, "uid":I
    const-string v3, "first_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 200
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "last_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_16

    const-string v3, "photo_100"

    :goto_4
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 201
    :cond_16
    const-string v3, "photo_50"

    goto :goto_4

    .line 203
    :cond_17
    move/from16 v0, v27

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move/from16 v0, v27

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    const-string v3, "photo_100"

    :goto_6
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_18
    const-string v3, "photo_50"

    goto :goto_6

    .line 206
    .end local v27    # "uid":I
    :cond_19
    const-string v3, "uid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 207
    const-string v3, "uid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 208
    .restart local v27    # "uid":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "last_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1a

    const-string v3, "photo_medium_rec"

    :goto_7
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1a
    const-string v3, "photo_rec"

    goto :goto_7

    .line 211
    .end local v27    # "uid":I
    :cond_1b
    const-string v3, "gid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    neg-int v0, v3

    move/from16 v27, v0

    .line 212
    .restart local v27    # "uid":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1c

    const-string v3, "photo_100"

    :goto_8
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1c
    const-string v3, "photo_50"

    goto :goto_8

    .line 218
    .end local v27    # "uid":I
    :cond_1d
    const-string v3, "id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 219
    const-string v3, "id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 220
    .restart local v27    # "uid":I
    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1f

    const-string v3, "photo_medium_rec"

    :goto_9
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 221
    .local v20, "ph":Ljava/lang/String;
    if-nez v20, :cond_1e

    .line 222
    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20

    const-string v3, "photo_100"

    :goto_a
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 223
    :cond_1e
    const-string v3, "first_name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 224
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "last_name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v20    # "ph":Ljava/lang/String;
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 220
    :cond_1f
    const-string v3, "photo_rec"

    goto :goto_9

    .line 222
    .restart local v20    # "ph":Ljava/lang/String;
    :cond_20
    const-string v3, "photo_50"

    goto :goto_a

    .line 227
    :cond_21
    move/from16 v0, v27

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move/from16 v0, v27

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 231
    .end local v20    # "ph":Ljava/lang/String;
    .end local v27    # "uid":I
    :cond_22
    const-string v3, "gid"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    neg-int v0, v3

    move/from16 v27, v0

    .line 232
    .restart local v27    # "uid":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_23

    const-string v3, "photo"

    :goto_c
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_23
    const-string v3, "photo_medium"

    goto :goto_c

    .line 238
    .end local v13    # "i":I
    .end local v16    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "uid":I
    .end local v28    # "users1":Lorg/json/JSONObject;
    .end local v29    # "users2":Lorg/json/JSONObject;
    :cond_24
    const-string v3, "sticker"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 239
    const/4 v3, 0x3

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_64"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    const/4 v3, 0x1

    const-string v4, "photo_128"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    const/4 v3, 0x2

    const-string v4, "photo_256"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    .line 240
    .local v15, "imgs":[Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 241
    .local v14, "id":I
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "stickers"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    .line 242
    .local v19, "packs":[Ljava/io/File;
    const/16 v18, -0x1

    .line 243
    .local v18, "packID":I
    if-eqz v19, :cond_25

    .line 244
    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v3, 0x0

    :goto_d
    if-lt v3, v4, :cond_27

    .line 253
    :cond_25
    :goto_e
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_26

    .line 254
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    .line 255
    .local v24, "sizes":[I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    move-object/from16 v0, v24

    array-length v3, v0

    if-lt v13, v3, :cond_29

    .line 259
    .end local v13    # "i":I
    .end local v24    # "sizes":[I
    :cond_26
    new-instance v3, Lcom/vkontakte/android/StickerAttachment;

    const-string v4, "width"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "height"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v14, v15, v4, v5}, Lcom/vkontakte/android/StickerAttachment;-><init>(I[Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 244
    :cond_27
    aget-object v17, v19, v3

    .line 245
    .local v17, "pack":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_128b.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_28

    .line 247
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v18

    goto :goto_e

    .line 244
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 256
    .end local v17    # "pack":Ljava/io/File;
    .restart local v13    # "i":I
    .restart local v24    # "sizes":[I
    :cond_29
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A|file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stickers/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v24, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "b.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v13

    .line 255
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f

    .line 261
    .end local v13    # "i":I
    .end local v14    # "id":I
    .end local v15    # "imgs":[Ljava/lang/String;
    .end local v18    # "packID":I
    .end local v19    # "packs":[Ljava/io/File;
    .end local v24    # "sizes":[I
    :cond_2a
    const-string v3, "wall_reply"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v23, v0

    .line 263
    .restart local v23    # "post":[Lcom/vkontakte/android/NewsEntry;
    new-instance v3, Lcom/vkontakte/android/api/WallGetById;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "owner_id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "post_id"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 264
    new-instance v4, Lcom/vkontakte/android/Attachment$2;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/vkontakte/android/Attachment$2;-><init>([Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 276
    const/4 v3, 0x0

    aget-object v3, v23, v3

    if-eqz v3, :cond_2b

    new-instance v3, Lcom/vkontakte/android/PostAttachment;

    const/4 v4, 0x0

    aget-object v4, v23, v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 248
    .end local v23    # "post":[Lcom/vkontakte/android/NewsEntry;
    .restart local v14    # "id":I
    .restart local v15    # "imgs":[Ljava/lang/String;
    .restart local v17    # "pack":Ljava/io/File;
    .restart local v18    # "packID":I
    .restart local v19    # "packs":[Ljava/io/File;
    :catch_1
    move-exception v3

    goto/16 :goto_e

    .line 254
    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
    .end array-data
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

    .line 315
    const-string v0, "coordinates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "coords":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 317
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

    .line 318
    .local v3, "lon":D
    const-string v0, "place"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v11, Lcom/vkontakte/android/GeoPlace;

    const-string v0, "place"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    .line 320
    .local v11, "place":Lcom/vkontakte/android/GeoPlace;
    new-instance v0, Lcom/vkontakte/android/GeoAttachment;

    iget-object v5, v11, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    iget-object v6, v11, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    iget v7, v11, Lcom/vkontakte/android/GeoPlace;->id:I

    iget-object v8, v11, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 322
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
    .line 379
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_0
    sget-object v0, Lcom/vkontakte/android/Attachment;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v0, "photo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 384
    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    :cond_1
    const-string v0, "doc_thumb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    check-cast p0, Lcom/vkontakte/android/DocAttachView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->reset()V

    .line 389
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
    .line 392
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

    .line 393
    .local v3, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 406
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 407
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 412
    return-void

    .line 393
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 394
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v7, :cond_1

    .line 395
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_1
    instance-of v7, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v7, :cond_2

    .line 397
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_2
    instance-of v7, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_3

    .line 399
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_3
    instance-of v7, v0, Lcom/vkontakte/android/AudioAttachment;

    if-nez v7, :cond_4

    instance-of v7, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-nez v7, :cond_4

    instance-of v7, v0, Lcom/vkontakte/android/PollAttachment;

    if-eqz v7, :cond_5

    .line 401
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
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
