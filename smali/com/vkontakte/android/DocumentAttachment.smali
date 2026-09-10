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
.field did:I

.field oid:I

.field size:I

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/vkontakte/android/DocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/DocumentAttachment$1;-><init>()V

    .line 46
    sput-object v0, Lcom/vkontakte/android/DocumentAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 37
    iget v0, p1, Lcom/vkontakte/android/api/Document;->size:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 38
    iget v0, p1, Lcom/vkontakte/android/api/Document;->oid:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 39
    iget v0, p1, Lcom/vkontakte/android/api/Document;->did:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 40
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

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

    .line 42
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

    .line 44
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
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 29
    iput-object p4, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 31
    iput p6, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 32
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f08004c

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
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
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/DocumentAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 90
    const-string v2, "doc_thumb"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DocAttachView;

    .line 91
    .local v0, "av":Lcom/vkontakte/android/DocAttachView;
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    iget-object v5, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/DocAttachView;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .end local v0    # "av":Lcom/vkontakte/android/DocAttachView;
    :goto_0
    return-object v0

    .line 94
    :cond_0
    if-nez p2, :cond_2

    const-string v2, "common"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "v":Landroid/view/View;
    :goto_1
    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200fe

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Global;->langFileSize(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 99
    new-instance v2, Lcom/vkontakte/android/DocumentAttachment$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/DocumentAttachment$2;-><init>(Lcom/vkontakte/android/DocumentAttachment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v0, v1

    .line 106
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    :cond_2
    move-object v1, p2

    .line 94
    goto :goto_1
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 130
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 131
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 132
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
    .line 112
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    :goto_1
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 120
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    goto :goto_0

    .line 117
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
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
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
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
