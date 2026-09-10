.class public Lcom/vkontakte/android/AudioAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "AudioAttachment.java"


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
.field public aid:I

.field public artist:Ljava/lang/String;

.field public duration:I

.field public oid:I

.field public transient playlist:[Lcom/vkontakte/android/AudioFile;

.field public transient playlistPos:I

.field public transient referer:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/vkontakte/android/AudioAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioAttachment$1;-><init>()V

    .line 39
    sput-object v0, Lcom/vkontakte/android/AudioAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "af"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    .line 34
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    .line 35
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    .line 36
    iget v0, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "_artist"    # Ljava/lang/String;
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_duration"    # I
    .param p4, "_oid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    .line 27
    iput p4, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    .line 28
    iput p5, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/AudioAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 74
    if-nez p2, :cond_1

    const-string v1, "audio"

    invoke-static {p1, v1}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .line 75
    .local v0, "aav":Lcom/vkontakte/android/AudioAttachView;
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachment;->referer:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    iget v3, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    iget v4, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    iget v5, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    iput-object v1, v0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 80
    iget v1, p0, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    iput v1, v0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 83
    :cond_0
    return-object v0

    .end local v0    # "aav":Lcom/vkontakte/android/AudioAttachView;
    :cond_1
    move-object v0, p2

    .line 74
    goto :goto_0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 103
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 104
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 105
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
    .line 88
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/vkontakte/android/AudioAttachment;->aid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
