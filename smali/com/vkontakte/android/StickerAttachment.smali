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
    .line 40
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/StickerAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/StickerAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_images"    # [Ljava/lang/String;
    .param p3, "_width"    # I
    .param p4, "_height"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 27
    iput p1, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 28
    iput-object p2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 30
    iput p4, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    .line 38
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const v0, 0x7f0201e3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Lcom/vkontakte/android/StickerAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/StickerAttachment$2;-><init>(Lcom/vkontakte/android/StickerAttachment;Landroid/content/Context;)V

    .line 70
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    .line 102
    .local v0, "stickerSize":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 101
    .end local v0    # "stickerSize":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getKeyboardImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "width"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "size":I
    const/16 v2, 0x40

    if-le p1, v2, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 109
    :cond_0
    const/16 v2, 0x80

    if-le p1, v2, :cond_1

    .line 110
    const/4 v0, 0x2

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 112
    .local v1, "url":Ljava/lang/String;
    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 115
    :cond_2
    return-object v1
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 78
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v1, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 79
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

    .line 80
    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    iget v4, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget-object v4, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 94
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    iget v4, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 120
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/vkontakte/android/StickerAttachment;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
