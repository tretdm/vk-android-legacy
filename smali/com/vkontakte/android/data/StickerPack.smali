.class public Lcom/vkontakte/android/data/StickerPack;
.super Ljava/lang/Object;
.source "StickerPack.java"


# static fields
.field public static final STATE_CONFIRMED:I = 0x2

.field public static final STATE_DOWNLOADED:I = 0x4

.field public static final STATE_INACTIVE:I = 0x5

.field public static final STATE_NOT_OWNED:I = 0x0

.field public static final STATE_OWNED:I = 0x3

.field public static final STATE_PAID:I = 0x1

.field public static final STATE_PROMOTED:I = 0x6

.field public static final STATE_UNAVAILABLE:I = 0x7


# instance fields
.field public author:Ljava/lang/String;

.field public baseURL:Ljava/lang/String;

.field public count:I

.field public description:Ljava/lang/String;

.field public downloadLink:Ljava/lang/String;

.field public id:I

.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isNew:Z

.field public previews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public price:Ljava/lang/String;

.field public state:I

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/StickerAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public stickersBaseURL:Ljava/lang/String;

.field public storeID:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    :try_start_0
    const-string v7, "id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/data/StickerPack;->id:I

    .line 70
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "base_url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "content.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/data/StickerPack;->downloadLink:Ljava/lang/String;

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    .line 73
    const-string v7, "stickers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "sticker_ids"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 74
    .local v2, "jids":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/data/StickerPack;->count:I

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 78
    const-string v7, "purchased"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_2

    move v4, v3

    .line 79
    .local v4, "purchased":Z
    :goto_1
    const-string v7, "active"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_3

    move v0, v3

    .line 80
    .local v0, "active":Z
    :goto_2
    const-string v7, "promoted"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_4

    .line 81
    .local v3, "promoted":Z
    :goto_3
    const-string v6, "base_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    .line 82
    const-string v6, "stickers"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "base_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/data/StickerPack;->stickersBaseURL:Ljava/lang/String;

    .line 83
    if-eqz v4, :cond_6

    .line 84
    if-eqz v0, :cond_5

    .line 85
    iget v6, p0, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/data/StickerPack;->state:I

    .line 86
    iget v6, p0, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 87
    const/4 v6, 0x3

    iput v6, p0, Lcom/vkontakte/android/data/StickerPack;->state:I

    .line 95
    :cond_0
    :goto_4
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/data/StickerPack;->state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "active":Z
    .end local v1    # "i":I
    .end local v2    # "jids":Lorg/json/JSONArray;
    .end local v3    # "promoted":Z
    .end local v4    # "purchased":Z
    :goto_5
    return-void

    .line 76
    .restart local v1    # "i":I
    .restart local v2    # "jids":Lorg/json/JSONArray;
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 78
    goto :goto_1

    .restart local v4    # "purchased":Z
    :cond_3
    move v0, v6

    .line 79
    goto :goto_2

    .restart local v0    # "active":Z
    :cond_4
    move v3, v6

    .line 80
    goto :goto_3

    .line 90
    .restart local v3    # "promoted":Z
    :cond_5
    const/4 v6, 0x5

    iput v6, p0, Lcom/vkontakte/android/data/StickerPack;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 96
    .end local v0    # "active":Z
    .end local v1    # "i":I
    .end local v2    # "jids":Lorg/json/JSONArray;
    .end local v3    # "promoted":Z
    .end local v4    # "purchased":Z
    :catch_0
    move-exception v5

    .line 97
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 92
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "active":Z
    .restart local v1    # "i":I
    .restart local v2    # "jids":Lorg/json/JSONArray;
    .restart local v3    # "promoted":Z
    .restart local v4    # "purchased":Z
    :cond_6
    if-eqz v3, :cond_0

    .line 93
    const/4 v6, 0x6

    :try_start_1
    iput v6, p0, Lcom/vkontakte/android/data/StickerPack;->state:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
