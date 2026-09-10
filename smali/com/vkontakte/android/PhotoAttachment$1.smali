.class Lcom/vkontakte/android/PhotoAttachment$1;
.super Ljava/lang/Object;
.source "PhotoAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAttachment;
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
        "Lcom/vkontakte/android/PhotoAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PhotoAttachment;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 123
    .local v10, "nImgs":I
    new-array v1, v10, [Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 124
    .local v1, "imgs":[Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-lt v9, v10, :cond_0

    .line 127
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v9

    .line 124
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PhotoAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PhotoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkontakte/android/PhotoAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/vkontakte/android/PhotoAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PhotoAttachment$1;->newArray(I)[Lcom/vkontakte/android/PhotoAttachment;

    move-result-object v0

    return-object v0
.end method
