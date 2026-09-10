.class Lcom/vkontakte/android/VideoAttachment$1;
.super Ljava/lang/Object;
.source "VideoAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/VideoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vkontakte/android/VideoAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/VideoAttachment;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 62
    .local v7, "t":I
    if-nez v7, :cond_0

    .line 63
    new-instance v0, Lcom/vkontakte/android/VideoAttachment;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 66
    .local v0, "va":Lcom/vkontakte/android/VideoAttachment;
    :goto_0
    return-object v0

    .line 65
    .end local v0    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VideoAttachment;

    sget-object v1, Lcom/vkontakte/android/api/VideoFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .restart local v0    # "va":Lcom/vkontakte/android/VideoAttachment;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/VideoAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/VideoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkontakte/android/VideoAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/vkontakte/android/VideoAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/VideoAttachment$1;->newArray(I)[Lcom/vkontakte/android/VideoAttachment;

    move-result-object v0

    return-object v0
.end method
