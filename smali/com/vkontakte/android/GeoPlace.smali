.class public Lcom/vkontakte/android/GeoPlace;
.super Ljava/lang/Object;
.source "GeoPlace.java"


# instance fields
.field public address:Ljava/lang/String;

.field public checkins:I

.field public distance:I

.field public groupID:I

.field public id:I

.field public lat:D

.field public lon:D

.field public photo:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/GeoPlace;->id:I

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/GeoPlace;->id:I

    .line 8
    const-string v1, ""

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 22
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/GeoPlace;->id:I

    .line 23
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    .line 24
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/GeoPlace;->lat:D

    .line 25
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/GeoPlace;->lon:D

    .line 26
    const-string v1, "checkins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/GeoPlace;->checkins:I

    .line 27
    const-string v1, "group_photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->photo:Ljava/lang/String;

    .line 28
    const-string v1, "group_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/GeoPlace;->groupID:I

    .line 29
    const-string v1, "distance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/GeoPlace;->distance:I

    .line 30
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing GeoPlace "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
