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

.field public postID:I

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
    .line 170
    new-instance v0, Lcom/vkontakte/android/Photo$1;

    invoke-direct {v0}, Lcom/vkontakte/android/Photo$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-wide v1, -0x3f3e6c0000000000L    # -9000.0

    .line 47
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

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const-wide v3, -0x3f3e6c0000000000L    # -9000.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
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

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nComments:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->nTags:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/Photo;->lat:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->viewClipTop:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/Photo;->postID:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/Photo;->deserializeImages(Ljava/lang/String;)V

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v1, v2

    .line 60
    goto :goto_2
.end method

.method public constructor <init>(Lcom/vkontakte/android/PhotoAttachment;)V
    .locals 9
    .param p1, "att"    # Lcom/vkontakte/android/PhotoAttachment;

    .prologue
    const/4 v6, 0x0

    const-wide v7, -0x3f3e6c0000000000L    # -9000.0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v6, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 26
    iput-boolean v6, p0, Lcom/vkontakte/android/Photo;->commentsLoaded:Z

    .line 28
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v7, p0, Lcom/vkontakte/android/Photo;->lat:D

    iput-wide v7, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->likePhotos:Ljava/util/ArrayList;

    .line 74
    iget-object v6, p1, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 76
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 77
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 78
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 79
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 80
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->date:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 81
    iget-object v6, p1, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 82
    iget-object v6, p1, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 84
    iget-object v5, p1, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 85
    .local v5, "sizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 86
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 88
    .local v1, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    new-instance v4, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v4}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 89
    .local v4, "p":Lcom/vkontakte/android/Photo$Image;
    iget v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    iput v6, v4, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 90
    iget v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    iput v6, v4, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 91
    iget-char v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    iput-char v6, v4, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 92
    iget-object v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 93
    iget-object v6, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v1    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v2    # "k":Ljava/lang/String;
    .end local v4    # "p":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    iget v6, p1, Lcom/vkontakte/android/PhotoAttachment;->postID:I

    iput v6, p0, Lcom/vkontakte/android/Photo;->postID:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const-wide v8, -0x3f3e6c0000000000L    # -9000.0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 98
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

    .line 100
    :try_start_0
    const-string v7, "id"

    const-string v8, "pid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->id:I

    .line 101
    const-string v7, "owner_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 102
    const-string v7, "album_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->albumID:I

    .line 103
    const-string v7, "user_id"

    iget v8, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 104
    iget v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v7, p0, Lcom/vkontakte/android/Photo;->userID:I

    .line 105
    :cond_0
    const-string v7, "text"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 106
    const-string v7, "access_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 107
    const-string v7, "date"

    const-string v8, "created"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->date:I

    .line 108
    const-string v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 110
    const-string v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nComments:I

    .line 111
    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nTags:I

    .line 113
    :cond_1
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 115
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "user_likes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 117
    :cond_2
    const-string v7, "can_comment"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 118
    const-string v5, "sizes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 119
    .local v3, "sizes":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 120
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 121
    .local v2, "size":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v1}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 122
    .local v1, "img":Lcom/vkontakte/android/Photo$Image;
    const-string v5, "height"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 123
    const-string v5, "width"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 124
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 125
    const-string v5, "src"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "img":Lcom/vkontakte/android/Photo$Image;
    .end local v2    # "size":Lorg/json/JSONObject;
    .end local v3    # "sizes":Lorg/json/JSONArray;
    :cond_3
    move v7, v6

    .line 115
    goto :goto_0

    :cond_4
    move v5, v6

    .line 117
    goto :goto_1

    .line 128
    .restart local v0    # "i":I
    .restart local v3    # "sizes":Lorg/json/JSONArray;
    :cond_5
    const-string v5, "lat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "long"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    const-string v5, "lat"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/Photo;->lat:D

    .line 130
    const-string v5, "long"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/Photo;->lon:D

    .line 132
    :cond_6
    const-string v5, "access_key"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    .line 133
    const-string v5, "post_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/Photo;->postID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "i":I
    .end local v3    # "sizes":Lorg/json/JSONArray;
    :goto_3
    return-void

    .line 134
    :catch_0
    move-exception v4

    .line 135
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
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public deserializeImages(Ljava/lang/String;)V
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    const-string v9, "\\$"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "ss":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "srcX":Ljava/lang/String;
    const/4 v7, 0x0

    .line 232
    .local v7, "srcY":Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 233
    .local v4, "p":Ljava/lang/String;
    const-string v9, "\\^"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "pp":[Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v2}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 235
    .local v2, "im":Lcom/vkontakte/android/Photo$Image;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 236
    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 237
    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 238
    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/vkontakte/android/Photo$Image;->height:I

    .line 239
    iget-object v9, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-char v9, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_0

    iget-object v9, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 241
    :cond_0
    iget-char v9, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v10, 0x78

    if-ne v9, v10, :cond_1

    iget-object v6, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 242
    :cond_1
    iget-char v9, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    const/16 v10, 0x79

    if-ne v9, v10, :cond_2

    iget-object v7, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    .line 232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "pp":[Ljava/lang/String;
    :cond_3
    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_4

    sget-boolean v9, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v9, :cond_6

    .line 245
    :cond_4
    if-eqz v7, :cond_5

    .end local v7    # "srcY":Ljava/lang/String;
    :goto_1
    iput-object v7, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 249
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "srcX":Ljava/lang/String;
    .end local v8    # "ss":[Ljava/lang/String;
    :goto_2
    return-void

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "srcX":Ljava/lang/String;
    .restart local v7    # "srcY":Ljava/lang/String;
    .restart local v8    # "ss":[Ljava/lang/String;
    :cond_5
    move-object v7, v6

    .line 245
    goto :goto_1

    .line 247
    :cond_6
    iput-object v6, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 248
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "srcX":Ljava/lang/String;
    .end local v7    # "srcY":Ljava/lang/String;
    .end local v8    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public getImage(C)Lcom/vkontakte/android/Photo$Image;
    .locals 3
    .param p1, "s"    # C

    .prologue
    .line 192
    iget-object v2, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo$Image;

    .line 193
    .local v1, "im":Lcom/vkontakte/android/Photo$Image;
    iget-char v2, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    if-ne v2, p1, :cond_0

    .line 203
    .end local v1    # "im":Lcom/vkontakte/android/Photo$Image;
    :goto_0
    return-object v1

    .line 195
    :cond_1
    const/16 v2, 0x73

    if-eq p1, v2, :cond_2

    const/16 v2, 0x6d

    if-eq p1, v2, :cond_2

    const/16 v2, 0x78

    if-ne p1, v2, :cond_3

    .line 196
    :cond_2
    new-instance v1, Lcom/vkontakte/android/Photo$Image;

    invoke-direct {v1}, Lcom/vkontakte/android/Photo$Image;-><init>()V

    .line 197
    .restart local v1    # "im":Lcom/vkontakte/android/Photo$Image;
    iput-char p1, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    .line 198
    const/4 v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    iput v2, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    .line 199
    const-string v2, ""

    iput-object v2, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    .line 203
    .end local v1    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImage(CC)Lcom/vkontakte/android/Photo$Image;
    .locals 1
    .param p1, "s"    # C
    .param p2, "fallback"    # C

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v0

    .line 216
    .local v0, "im":Lcom/vkontakte/android/Photo$Image;
    if-eqz v0, :cond_0

    .line 217
    .end local v0    # "im":Lcom/vkontakte/android/Photo$Image;
    :goto_0
    return-object v0

    .restart local v0    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getImage([C)Lcom/vkontakte/android/Photo$Image;
    .locals 5
    .param p1, "sizes"    # [C

    .prologue
    .line 207
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-char v1, v0, v2

    .line 208
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v3

    .line 209
    .local v3, "im":Lcom/vkontakte/android/Photo$Image;
    if-eqz v3, :cond_0

    .line 211
    .end local v1    # "c":C
    .end local v3    # "im":Lcom/vkontakte/android/Photo$Image;
    :goto_1
    return-object v3

    .line 207
    .restart local v1    # "c":C
    .restart local v3    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "c":C
    .end local v3    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public serializeImages()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo$Image;

    .line 223
    .local v1, "im":Lcom/vkontakte/android/Photo$Image;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v4, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v1    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    const-string v3, "$"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget v0, p0, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/vkontakte/android/Photo;->userID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/vkontakte/android/Photo;->date:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/vkontakte/android/Photo;->nComments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/vkontakte/android/Photo;->nTags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-boolean v0, p0, Lcom/vkontakte/android/Photo;->canComment:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-wide v0, p0, Lcom/vkontakte/android/Photo;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 162
    iget-wide v0, p0, Lcom/vkontakte/android/Photo;->lon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/Photo;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget v0, p0, Lcom/vkontakte/android/Photo;->viewClipTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/vkontakte/android/Photo;->postID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/Photo;->serializeImages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    goto :goto_1

    :cond_2
    move v1, v2

    .line 157
    goto :goto_2
.end method
