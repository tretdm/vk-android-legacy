.class public Lcom/vkontakte/android/AudioAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "AudioAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/AudioAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aid:I

.field artist:Ljava/lang/String;

.field duration:I

.field oid:I

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/vkontakte/android/AudioAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioAttachment$1;-><init>()V

    .line 33
    sput-object v0, Lcom/vkontakte/android/AudioAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "af"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    .line 28
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    .line 29
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    .line 30
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "_artist"    # Ljava/lang/String;
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_duration"    # I
    .param p4, "_oid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    .line 21
    iput p4, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    .line 22
    iput p5, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/AudioAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .line 67
    .local v0, "aav":Lcom/vkontakte/android/AudioAttachView;
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v3, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget v4, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v5, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V

    .line 68
    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
