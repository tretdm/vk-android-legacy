.class public Lcom/vkontakte/android/DocumentAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "DocumentAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ImageAttachment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/DocumentAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public did:I

.field public gifView:Lcom/vkontakte/android/ui/GifView;

.field public oid:I

.field public size:I

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/vkontakte/android/DocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/DocumentAttachment$1;-><init>()V

    .line 52
    sput-object v0, Lcom/vkontakte/android/DocumentAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 39
    iget v0, p1, Lcom/vkontakte/android/api/Document;->size:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 40
    iget v0, p1, Lcom/vkontakte/android/api/Document;->oid:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 41
    iget v0, p1, Lcom/vkontakte/android/api/Document;->did:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 42
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_size"    # I
    .param p4, "_thumb"    # Ljava/lang/String;
    .param p5, "_oid"    # I
    .param p6, "_did"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 31
    iput-object p4, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 33
    iput p6, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 34
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f090056

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/DocumentAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 87
    const-string v2, "doc_thumb"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DocAttachView;

    .line 88
    .local v0, "av":Lcom/vkontakte/android/DocAttachView;
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    iget-object v5, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/DocAttachView;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .end local v0    # "av":Lcom/vkontakte/android/DocAttachView;
    :goto_0
    return-object v0

    .line 91
    :cond_0
    if-nez p2, :cond_2

    const-string v2, "common"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "v":Landroid/view/View;
    :goto_1
    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    int-to-long v4, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    new-instance v2, Lcom/vkontakte/android/DocumentAttachment$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/DocumentAttachment$2;-><init>(Lcom/vkontakte/android/DocumentAttachment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v0, v1

    .line 107
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    :cond_2
    move-object v1, p2

    .line 91
    goto :goto_1
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 131
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 132
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 133
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
    .line 113
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    :goto_1
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 121
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

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
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
