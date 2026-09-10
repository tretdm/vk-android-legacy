.class final Lcom/vkontakte/android/PendingVideoAttachment$1;
.super Ljava/lang/Object;
.source "PendingVideoAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PendingVideoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vkontakte/android/PendingVideoAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PendingVideoAttachment;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 28
    .local v7, "t":I
    if-nez v7, :cond_0

    .line 29
    new-instance v0, Lcom/vkontakte/android/PendingVideoAttachment;

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

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/PendingVideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/vkontakte/android/PendingVideoAttachment;

    sget-object v0, Lcom/vkontakte/android/api/VideoFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/PendingVideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PendingVideoAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PendingVideoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkontakte/android/PendingVideoAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vkontakte/android/PendingVideoAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PendingVideoAttachment$1;->newArray(I)[Lcom/vkontakte/android/PendingVideoAttachment;

    move-result-object v0

    return-object v0
.end method
