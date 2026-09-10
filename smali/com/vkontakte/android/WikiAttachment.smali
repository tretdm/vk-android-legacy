.class public Lcom/vkontakte/android/WikiAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "WikiAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/WikiAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field oid:I

.field pid:I

.field section:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/vkontakte/android/WikiAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/WikiAttachment$1;-><init>()V

    .line 45
    sput-object v0, Lcom/vkontakte/android/WikiAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    .line 29
    iput p4, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/WikiAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 63
    if-nez p2, :cond_0

    const-string v1, "common"

    invoke-static {p1, v1}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "v":Landroid/view/View;
    :goto_0
    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080198

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    new-instance v1, Lcom/vkontakte/android/WikiAttachment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiAttachment$2;-><init>(Lcom/vkontakte/android/WikiAttachment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object v0

    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 63
    goto :goto_0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 96
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 97
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 98
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
    .line 85
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
