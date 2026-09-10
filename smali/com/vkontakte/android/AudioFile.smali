.class public Lcom/vkontakte/android/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aid:I

.field public artist:Ljava/lang/String;

.field public duration:I

.field public durationS:Ljava/lang/String;

.field public fileSize:I

.field public fromAttachment:Z

.field public lyricsID:I

.field public oid:I

.field public oldAid:I

.field public oldOid:I

.field public playlistID:I

.field public retried:Z

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/vkontakte/android/AudioFile$1;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioFile$1;-><init>()V

    .line 87
    sput-object v0, Lcom/vkontakte/android/AudioFile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "aid"    # I
    .param p2, "oid"    # I
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "duration"    # I
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 30
    iput p2, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 31
    iput-object p3, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 33
    iput p5, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 34
    iput-object p6, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 35
    const-string v0, "%d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p5, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p5, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioFile;->fromAttachment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioFile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/AudioAttachment;)V
    .locals 7
    .param p1, "att"    # Lcom/vkontakte/android/AudioAttachment;

    .prologue
    .line 54
    iget v1, p1, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v2, p1, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget-object v3, p1, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v5, p1, Lcom/vkontakte/android/AudioAttachment;->duration:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    const-string v1, "id"

    const-string v2, "aid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 41
    const-string v1, "owner_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 42
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 43
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 44
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 45
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 46
    const-string v1, "lyrics_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 47
    const-string v1, "album_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioFile;->playlistID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing audio "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/AudioFile;)Z
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equalsAdded(Lcom/vkontakte/android/AudioFile;)Z
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->oldOid:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eq v1, v2, :cond_3

    :cond_2
    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    iget v2, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFile {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioFile;->fromAttachment:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
