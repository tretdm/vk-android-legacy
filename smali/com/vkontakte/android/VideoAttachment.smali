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
.field public accessKey:Ljava/lang/String;

.field public bigImage:Ljava/lang/String;

.field duration:I

.field public image:Ljava/lang/String;

.field oid:I

.field public title:Ljava/lang/String;

.field vfile:Lcom/vkontakte/android/api/VideoFile;

.field vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/vkontakte/android/VideoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/VideoAttachment$1;-><init>()V

    .line 49
    sput-object v0, Lcom/vkontakte/android/VideoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 1
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 42
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 43
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 44
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 45
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->bigImage:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    .line 47
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
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 25
    iput p4, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 26
    iput p5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I
    .param p6, "_akey"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 33
    iput p4, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 34
    iput p5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 35
    iput-object p6, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 36
    const-string v0, ""

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/VideoAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/VideoAttachView;

    .line 94
    .local v0, "vav":Lcom/vkontakte/android/VideoAttachView;
    iget-object v1, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v1}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 96
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 97
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 98
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v2, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    iput v2, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 100
    iget-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v2, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iput-object v1, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    goto :goto_0
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
    .line 109
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    :goto_2
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/VideoFile;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->bigImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    :goto_1
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/api/VideoFile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method
