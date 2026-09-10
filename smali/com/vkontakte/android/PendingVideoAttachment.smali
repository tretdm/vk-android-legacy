.class public Lcom/vkontakte/android/PendingVideoAttachment;
.super Lcom/vkontakte/android/VideoAttachment;
.source "PendingVideoAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/PendingVideoAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vkontakte/android/PendingVideoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PendingVideoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/PendingVideoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I
    .param p6, "_akey"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/VideoAttachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    return-void
.end method
