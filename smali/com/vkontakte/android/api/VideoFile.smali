.class public Lcom/vkontakte/android/api/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public comments:I

.field public date:I

.field public descr:Ljava/lang/String;

.field public duration:I

.field public liked:Z

.field public likes:I

.field public oid:I

.field public ownerName:Ljava/lang/String;

.field public ownerPhoto:Ljava/lang/String;

.field public repeat:Z

.field public title:Ljava/lang/String;

.field public url240:Ljava/lang/String;

.field public url360:Ljava/lang/String;

.field public url480:Ljava/lang/String;

.field public url720:Ljava/lang/String;

.field public urlBigThumb:Ljava/lang/String;

.field public urlEmbed:Ljava/lang/String;

.field public urlExternal:Ljava/lang/String;

.field public urlThumb:Ljava/lang/String;

.field public vid:I

.field public views:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/vkontakte/android/api/VideoFile$1;

    invoke-direct {v0}, Lcom/vkontakte/android/api/VideoFile$1;-><init>()V

    .line 208
    sput-object v0, Lcom/vkontakte/android/api/VideoFile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->views:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->likes:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->comments:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jv"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    const-string v4, "video_id"

    const-string v5, "id"

    const-string v6, "vid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 73
    const-string v4, "owner_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 74
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 75
    const-string v4, "description"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 76
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 77
    const-string v4, "photo_130"

    const-string v5, "thumb"

    const-string v6, "image"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 78
    const-string v4, "photo_640"

    const-string v5, "photo_320"

    const-string v6, "image_medium"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 79
    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v5, "date"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 80
    const-string v4, "views"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->views:I

    .line 81
    const-string v4, "files"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    .local v0, "files":Lorg/json/JSONObject;
    if-eqz v0, :cond_8

    .line 83
    const-string v4, "flv_320"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "flv_320"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 85
    :cond_0
    const-string v4, "mp4_240"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    const-string v4, "mp4_240"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 87
    :cond_1
    const-string v4, "mp4_360"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const-string v4, "mp4_360"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 89
    :cond_2
    const-string v4, "mp4_480"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    const-string v4, "mp4_480"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 91
    :cond_3
    const-string v4, "mp4_720"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    const-string v4, "mp4_720"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 93
    :cond_4
    const-string v4, "external"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    const-string v4, "external"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 98
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 100
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 102
    :cond_6
    const-string v4, "player"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 103
    const-string v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    const-string v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->likes:I

    .line 105
    const-string v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "user_likes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_9

    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    .line 107
    :cond_7
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "embed="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "comments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/api/VideoFile;->comments:I

    .line 109
    const-string v4, "repeat"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_a

    :goto_2
    iput-boolean v2, p0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    .line 110
    const-string v2, "access_key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 114
    .end local v0    # "files":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 96
    .restart local v0    # "files":Lorg/json/JSONObject;
    :cond_8
    const-string v4, "player"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "files":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v1    # "x":Ljava/lang/Exception;
    .restart local v0    # "files":Lorg/json/JSONObject;
    :cond_9
    move v4, v3

    .line 105
    goto :goto_1

    :cond_a
    move v2, v3

    .line 109
    goto :goto_2
.end method

.method public static createFromStream(Ljava/io/DataInputStream;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1
    .param p0, "p"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v0}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 204
    .local v0, "v":Lcom/vkontakte/android/api/VideoFile;
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/api/VideoFile;->readFromStream(Ljava/io/DataInputStream;)V

    .line 205
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public readFromStream(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "p"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 172
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 173
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 174
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 185
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->views:I

    .line 186
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 188
    :cond_0
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 189
    :cond_1
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 190
    :cond_2
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 191
    :cond_3
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 192
    :cond_4
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 193
    :cond_5
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 194
    :cond_6
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 195
    :cond_7
    const-string v0, ""

    iget-object v3, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v4, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 196
    :cond_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->likes:I

    .line 197
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/api/VideoFile;->comments:I

    .line 198
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    .line 199
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    :goto_1
    iput-boolean v1, p0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    .line 200
    return-void

    :cond_9
    move v0, v2

    .line 198
    goto :goto_0

    :cond_a
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->date:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->views:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->likes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->comments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "p"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->date:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->views:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->likes:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/vkontakte/android/api/VideoFile;->comments:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    iget-boolean v0, p0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    goto :goto_2

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    goto :goto_3

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    goto :goto_4

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    goto :goto_5

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    goto :goto_6

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move v0, v2

    .line 166
    goto :goto_8

    :cond_9
    move v1, v2

    .line 167
    goto :goto_9
.end method
