.class Lcom/vkontakte/android/PostAttachment$1;
.super Ljava/lang/Object;
.source "PostAttachment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostAttachment;
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
        "Lcom/vkontakte/android/PostAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PostAttachment;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 31
    .local v0, "post":Lcom/vkontakte/android/NewsEntry;
    new-instance v1, Lcom/vkontakte/android/PostAttachment;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PostAttachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/PostAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkontakte/android/PostAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vkontakte/android/PostAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PostAttachment$1;->newArray(I)[Lcom/vkontakte/android/PostAttachment;

    move-result-object v0

    return-object v0
.end method
