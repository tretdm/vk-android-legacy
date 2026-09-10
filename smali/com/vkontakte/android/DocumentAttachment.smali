.class public Lcom/vkontakte/android/DocumentAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "DocumentAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;
    }
.end annotation


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
    .line 46
    new-instance v0, Lcom/vkontakte/android/DocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/DocumentAttachment$1;-><init>()V

    .line 45
    sput-object v0, Lcom/vkontakte/android/DocumentAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/Document;)V
    .locals 1
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 38
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 40
    iget v0, p1, Lcom/vkontakte/android/api/Document;->size:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 41
    iget v0, p1, Lcom/vkontakte/android/api/Document;->oid:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 42
    iget v0, p1, Lcom/vkontakte/android/api/Document;->did:I

    iput v0, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_size"    # I
    .param p4, "_thumb"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 25
    iput-object p4, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 26
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
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    .line 32
    iput-object p4, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 33
    iput p5, p0, Lcom/vkontakte/android/DocumentAttachment;->oid:I

    .line 34
    iput p6, p0, Lcom/vkontakte/android/DocumentAttachment;->did:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const v2, 0x7f030002

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DocAttachView;

    .line 73
    .local v0, "av":Lcom/vkontakte/android/DocAttachView;
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    iget-object v5, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vkontakte/android/DocAttachView;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v0

    .line 78
    .end local v0    # "av":Lcom/vkontakte/android/DocAttachView;
    .local v1, "av":Lcom/vkontakte/android/DocAttachView;
    :goto_0
    return-object v1

    .line 76
    .end local v1    # "av":Lcom/vkontakte/android/DocAttachView;
    :cond_0
    const v2, 0x7f030001

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DocAttachView;

    .line 77
    .restart local v0    # "av":Lcom/vkontakte/android/DocAttachView;
    iget-object v2, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    iget v4, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/DocAttachView;->setData(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    .line 78
    .end local v0    # "av":Lcom/vkontakte/android/DocAttachView;
    .restart local v1    # "av":Lcom/vkontakte/android/DocAttachView;
    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x1

    .line 84
    new-instance v0, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;-><init>(Lcom/vkontakte/android/DocumentAttachment;Landroid/content/Context;)V

    .line 85
    .local v0, "layout":Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;
    invoke-virtual {v0, v5}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->setOrientation(I)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 91
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 93
    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->addView(Landroid/view/View;)V

    .line 108
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

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/vkontakte/android/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
