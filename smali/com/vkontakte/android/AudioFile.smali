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

.field public lyricsID:I

.field public oid:I

.field public retried:Z

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/vkontakte/android/AudioFile$1;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioFile$1;-><init>()V

    .line 63
    sput-object v0, Lcom/vkontakte/android/AudioFile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 23
    iput p2, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 24
    iput-object p3, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 26
    iput p5, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 27
    iput-object p6, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 28
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

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioFile;->lyricsID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioFile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/AudioAttachment;)V
    .locals 7
    .param p1, "att"    # Lcom/vkontakte/android/AudioAttachment;

    .prologue
    .line 32
    iget v1, p1, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v2, p1, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget-object v3, p1, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v5, p1, Lcom/vkontakte/android/AudioAttachment;->duration:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/AudioFile;)Z
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v0, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 76
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
