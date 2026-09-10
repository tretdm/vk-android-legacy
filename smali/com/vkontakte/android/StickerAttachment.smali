.class public Lcom/vkontakte/android/StickerAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "StickerAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ImageAttachment;


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
    .line 41
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/StickerAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/StickerAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_images"    # [Ljava/lang/String;
    .param p3, "_width"    # I
    .param p4, "_height"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 28
    iput p1, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 29
    iput-object p2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 31
    iput p4, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 39
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const v0, 0x7f020261

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/StickerAttachment$2;-><init>(Lcom/vkontakte/android/StickerAttachment;Landroid/content/Context;)V

    .line 71
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    .line 103
    .local v0, "stickerSize":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 102
    .end local v0    # "stickerSize":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getKeyboardImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "width"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "size":I
    const/16 v2, 0x40

    if-le p1, v2, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 110
    :cond_0
    const/16 v2, 0x80

    if-le p1, v2, :cond_1

    .line 111
    const/4 v0, 0x2

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 113
    .local v1, "url":Ljava/lang/String;
    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 116
    :cond_2
    return-object v1
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 79
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 80
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

    .line 81
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
    .line 91
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 96
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 98
    return-void

    .line 94
    :cond_0
    aget-object v0, v2, v1

    .line 95
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 121
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
