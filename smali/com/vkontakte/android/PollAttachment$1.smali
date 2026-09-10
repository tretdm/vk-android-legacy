.class Lcom/vkontakte/android/PollAttachment$1;
.super Ljava/lang/Object;
.source "PollAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PollAttachment;
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
        "Lcom/vkontakte/android/PollAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PollAttachment;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/vkontakte/android/PollAttachment;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PollAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PollAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkontakte/android/PollAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    new-array v0, p1, [Lcom/vkontakte/android/PollAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PollAttachment$1;->newArray(I)[Lcom/vkontakte/android/PollAttachment;

    move-result-object v0

    return-object v0
.end method
