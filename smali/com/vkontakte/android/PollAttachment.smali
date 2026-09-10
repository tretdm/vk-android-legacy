.class public Lcom/vkontakte/android/PollAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "PollAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/PollAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fullView:Lcom/vkontakte/android/PollAttachView;

.field public oid:I

.field public pid:I

.field public question:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vkontakte/android/PollAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PollAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/PollAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_question"    # Ljava/lang/String;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PollAttachment;->fullView:Lcom/vkontakte/android/PollAttachView;

    .line 25
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/vkontakte/android/PollAttachment;->oid:I

    .line 27
    iput p3, p0, Lcom/vkontakte/android/PollAttachment;->pid:I

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/PollAttachment;->fullView:Lcom/vkontakte/android/PollAttachView;

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Lcom/vkontakte/android/PollAttachView;

    iget v1, p0, Lcom/vkontakte/android/PollAttachment;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachment;->pid:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vkontakte/android/PollAttachView;-><init>(Landroid/content/Context;II)V

    .line 58
    .local v0, "pv":Lcom/vkontakte/android/PollAttachView;
    invoke-virtual {v0}, Lcom/vkontakte/android/PollAttachView;->loadData()V

    .line 59
    iput-object v0, p0, Lcom/vkontakte/android/PollAttachment;->fullView:Lcom/vkontakte/android/PollAttachView;

    .line 62
    .end local v0    # "pv":Lcom/vkontakte/android/PollAttachView;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachment;->fullView:Lcom/vkontakte/android/PollAttachView;

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 67
    if-nez p2, :cond_0

    const-string v1, "common"

    invoke-static {p1, v1}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "v":Landroid/view/View;
    :goto_0
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    return-object v0

    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 67
    goto :goto_0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 93
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 94
    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 95
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
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/vkontakte/android/PollAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/vkontakte/android/PollAttachment;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PollAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PollAttachment;->pid:I

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
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/vkontakte/android/PollAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/vkontakte/android/PollAttachment;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
