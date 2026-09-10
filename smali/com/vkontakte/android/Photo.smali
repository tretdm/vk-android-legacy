.class public Lcom/vkontakte/android/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/Photo$Image;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public albumID:I

.field public canComment:Z

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field public commentsLoaded:Z

.field public date:I

.field public descr:Ljava/lang/String;

.field public fullURL:Ljava/lang/String;

.field public id:I

.field public infoLoaded:Z

.field public isLiked:Z

.field public lat:D

.field public likePhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lon:D

.field public nComments:I

.field public nLikes:I

.field public nTags:I

.field public ownerID:I

.field public ownerName:Ljava/lang/String;

.field public ownerPhoto:Ljava/lang/String;

.field public placeAddress:Ljava/lang/String;

.field public sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo$Image;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/PhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field public thumbURL:Ljava/lang/String;

.field public user:Lcom/vkontakte/android/UserProfile;

.field public userID:I

.field public viewBounds:Landroid/graphics/Rect;

.field public viewClipTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/vkontakte/android/Photo$1;

    invoke-direct {v0}, Lcom/vkontakte/android/Photo$1;-><init>()V

    .line 165
    sput-object v0, Lcom/vkontakte/android/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide v1, -0x3f3e6c0000000000L    # -9000.0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->commentsLoaded:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v1, p0, Lcom/vkontakte/android/Photo;->lat:D

    iput-wide v1, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->likePhotos:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const-wide v3, -0x3f3e6c0000000000L    # -9000.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 26
    iput-boolean v2, p0, Lcom/vkontakte/android/Photo;->commentsLoaded:Z

    .line 28
    iput-boolean v1, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v3, p0, Lcom/vkontakte/android/Photo;->lat:D

    iput-wide v3, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->likePhotos:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nComments:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nTags:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/Photo;->lat:D

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/Photo;->deserializeImages(Ljava/lang/String;)V

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v1, v2

    .line 59
    goto :goto_2
.end method

.method public constructor <init>(Lcom/vkontakte/android/PhotoAttachment;)V
    .locals 8
    .param p1, "att"    # Lcom/vkontakte/android/PhotoAttachment;

    .prologue
    const/4 v5, 0x0

    const-wide v6, -0x3f3e6c0000000000L    # -9000.0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 26
    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->commentsLoaded:Z

    .line 28
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v6, p0, Lcom/vkontakte/android/Photo;->lat:D

    iput-wide v6, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->likePhotos:Ljava/util/ArrayList;

    .line 72
    iget-object v5, p1, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 74
    iget v5, p1, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    iput v5, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 75
    iget v5, p1, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    iput v5, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 76
    iget v5, p1, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    iput v5, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 77
    iget v5, p1, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    iput v5, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 78
    iget v5, p1, Lcom/vkontakte/android/PhotoAttachment;->date:I

    iput v5, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 79
    iget-object v5, p1, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 80
    iget-object v5, p1, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 82
    iget-object v4, p1, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 83
    .local v4, "sizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 84
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    return-void

    .line 84
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 86
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    new-instance v3, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v3}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 87
    .local v3, "p":Lcom/vkontakte/android/Photo$Image;
    iget v6, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    iput v6, v3, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 88
    iget v6, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    iput v6, v3, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 89
    iget-char v6, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    iput-char v6, v3, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 90
    iget-object v6, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v6, v3, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 91
    iget-object v6, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const-wide v8, -0x3f3e6c0000000000L    # -9000.0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v6, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 26
    iput-boolean v6, p0, Lcom/vkontakte/android/Photo;->commentsLoaded:Z

    .line 28
    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v8, p0, Lcom/vkontakte/android/Photo;->lat:D

    iput-wide v8, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->likePhotos:Ljava/util/ArrayList;

    .line 97
    :try_start_0
    const-string v7, "id"

    const-string v8, "pid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 98
    const-string v7, "owner_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 99
    const-string v7, "album_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 100
    const-string v7, "user_id"

    iget v8, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 101
    iget v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 102
    :cond_0
    const-string v7, "text"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 103
    const-string v7, "access_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 104
    const-string v7, "date"

    const-string v8, "created"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 105
    const-string v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 107
    const-string v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nComments:I

    .line 108
    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nTags:I

    .line 110
    :cond_1
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 112
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "user_likes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 114
    :cond_2
    const-string v7, "can_comment"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 115
    const-string v5, "sizes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 116
    .local v3, "sizes":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_6

    .line 125
    const-string v5, "lat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "long"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    const-string v5, "lat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/Photo;->lat:D

    .line 127
    const-string v5, "long"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 129
    :cond_3
    const-string v5, "access_key"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 133
    .end local v0    # "i":I
    .end local v3    # "sizes":Lorg/json/JSONArray;
    :goto_3
    return-void

    :cond_4
    move v7, v6

    .line 112
    goto :goto_0

    :cond_5
    move v5, v6

    .line 114
    goto :goto_1

    .line 117
    .restart local v0    # "i":I
    .restart local v3    # "sizes":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    .local v2, "size":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v1}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 119
    .local v1, "img":Lcom/vkontakte/android/Photo$Image;
    const-string v5, "height"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 120
    const-string v5, "width"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 121
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 122
    const-string v5, "src"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 123
    iget-object v5, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    .end local v0    # "i":I
    .end local v1    # "img":Lcom/vkontakte/android/Photo$Image;
    .end local v2    # "size":Lorg/json/JSONObject;
    .end local v3    # "sizes":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error parsing photo!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public deserializeImages(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 205
    :try_start_0
    const-string v7, "\\$"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "ss":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "srcX":Ljava/lang/String;
    const/4 v4, 0x0

    .line 207
    .local v4, "srcY":Ljava/lang/String;
    array-length v7, v5

    :goto_0
    if-lt v6, v7, :cond_1

    .line 219
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_6

    .line 220
    :cond_0
    if-eqz v4, :cond_5

    .end local v4    # "srcY":Ljava/lang/String;
    :goto_1
    iput-object v4, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 224
    .end local v3    # "srcX":Ljava/lang/String;
    .end local v5    # "ss":[Ljava/lang/String;
    :goto_2
    return-void

    .line 207
    .restart local v3    # "srcX":Ljava/lang/String;
    .restart local v4    # "srcY":Ljava/lang/String;
    .restart local v5    # "ss":[Ljava/lang/String;
    :cond_1
    aget-object v1, v5, v6

    .line 208
    .local v1, "p":Ljava/lang/String;
    const-string v8, "\\^"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "pp":[Ljava/lang/String;
    new-instance v0, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v0}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 210
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 211
    const/4 v8, 0x1

    aget-object v8, v2, v8

    iput-object v8, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 212
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 213
    const/4 v8, 0x3

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 214
    iget-object v8, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-char v8, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v9, 0x6d

    if-ne v8, v9, :cond_2

    iget-object v8, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v8, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 216
    :cond_2
    iget-char v8, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v9, 0x78

    if-ne v8, v9, :cond_3

    iget-object v3, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 217
    :cond_3
    iget-char v8, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v9, 0x79

    if-ne v8, v9, :cond_4

    iget-object v4, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 207
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "pp":[Ljava/lang/String;
    :cond_5
    move-object v4, v3

    .line 220
    goto :goto_1

    .line 222
    :cond_6
    iput-object v3, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 223
    .end local v3    # "srcX":Ljava/lang/String;
    .end local v4    # "srcY":Ljava/lang/String;
    .end local v5    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getImage(C)Lcom/vkontakte/android/Photo$Image;
    .locals 3
    .param p1, "s"    # C

    .prologue
    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo$Image;

    .line 184
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    iget-char v2, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getImage(CC)Lcom/vkontakte/android/Photo$Image;
    .locals 1
    .param p1, "s"    # C
    .param p2, "fallback"    # C

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v0

    .line 191
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    if-eqz v0, :cond_0

    .line 192
    .end local v0    # "im":Lcom/vkontakte/android/Photo$Image;
    :goto_0
    return-object v0

    .restart local v0    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public serializeImages()Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const-string v2, "$"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo$Image;

    .line 198
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-char v4, v0, Lcom/vkontakte/android/Photo$Image;->type:C

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/Photo$Image;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/Photo$Image;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget v0, p0, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/vkontakte/android/Photo;->userID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/vkontakte/android/Photo;->date:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/vkontakte/android/Photo;->nComments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/vkontakte/android/Photo;->nTags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/vkontakte/android/Photo;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 158
    iget-wide v0, p0, Lcom/vkontakte/android/Photo;->lon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    iget v0, p0, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/Photo;->serializeImages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1

    :cond_2
    move v1, v2

    .line 153
    goto :goto_2
.end method
