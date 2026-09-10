.class public Lcom/vkontakte/android/StickerAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "StickerAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/StickerAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public id:I

.field public images:[Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/StickerAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/StickerAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_images"    # [Ljava/lang/String;
    .param p3, "_width"    # I
    .param p4, "_height"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 26
    iput p1, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 27
    iput-object p2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 29
    iput p4, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/StickerAttachment$2;-><init>(Lcom/vkontakte/android/StickerAttachment;Landroid/content/Context;)V

    .line 69
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 77
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 78
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 79
    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget-object v2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 94
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    return-void

    .line 92
    :cond_0
    aget-object v0, v2, v1

    .line 93
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
