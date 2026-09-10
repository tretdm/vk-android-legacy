.class public Lcom/vkontakte/android/VideoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "VideoAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/VideoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field duration:I

.field public image:Ljava/lang/String;

.field oid:I

.field public title:Ljava/lang/String;

.field vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/vkontakte/android/VideoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/VideoAttachment$1;-><init>()V

    .line 35
    sput-object v0, Lcom/vkontakte/android/VideoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 1
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 30
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 31
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 32
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 33
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
    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 23
    iput p4, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 24
    iput p5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 25
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

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/VideoAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/VideoAttachView;

    .line 69
    .local v0, "vav":Lcom/vkontakte/android/VideoAttachView;
    new-instance v1, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v1}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 70
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 71
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 72
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v2, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 73
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 74
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
    .line 79
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
