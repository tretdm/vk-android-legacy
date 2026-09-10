.class public Lcom/vkontakte/android/data/ApiApplication;
.super Ljava/lang/Object;
.source "ApiApplication.java"


# static fields
.field private static final ICON_SIZES:[I


# instance fields
.field public banner:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public friends:I

.field public friendsPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public genre:Ljava/lang/String;

.field public icons:[Ljava/lang/String;

.field public id:I

.field public isNew:Z

.field public members:I

.field public packageName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/data/ApiApplication;->ICON_SIZES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x19
        0x32
        0x4b
        0x64
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    .line 31
    :try_start_0
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/data/ApiApplication;->id:I

    .line 32
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    .line 33
    const-string v3, "description"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->description:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/vkontakte/android/data/ApiApplication;->ICON_SIZES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vkontakte/android/data/ApiApplication;->ICON_SIZES:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "platform_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/data/ApiApplication;->packageName:Ljava/lang/String;

    .line 38
    const-string v3, "new"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/vkontakte/android/data/ApiApplication;->isNew:Z

    .line 39
    const-string v2, "members_count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/data/ApiApplication;->members:I

    .line 40
    const-string v2, "banner_186"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/data/ApiApplication;->banner:Ljava/lang/String;

    .line 41
    const-string v2, "genre"

    const-string v3, "No Genre"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/data/ApiApplication;->genre:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 38
    .restart local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 43
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
