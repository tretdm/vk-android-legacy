.class public Lcom/vkontakte/android/NoteAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "NoteAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/NoteAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field nid:I

.field oid:I

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/vkontakte/android/NoteAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NoteAttachment$1;-><init>()V

    .line 26
    sput-object v0, Lcom/vkontakte/android/NoteAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_oid"    # I
    .param p3, "_nid"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/vkontakte/android/NoteAttachment;->oid:I

    .line 23
    iput p3, p0, Lcom/vkontakte/android/NoteAttachment;->nid:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NoteAttachView;

    .line 53
    .local v0, "av":Lcom/vkontakte/android/NoteAttachView;
    iget v1, p0, Lcom/vkontakte/android/NoteAttachment;->nid:I

    iput v1, v0, Lcom/vkontakte/android/NoteAttachView;->note_id:I

    .line 54
    iget v1, p0, Lcom/vkontakte/android/NoteAttachment;->oid:I

    iput v1, v0, Lcom/vkontakte/android/NoteAttachView;->owner_id:I

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/NoteAttachView;->title:Ljava/lang/String;

    .line 56
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NoteAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x1

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 69
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 71
    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
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
    .line 91
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/vkontakte/android/NoteAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/vkontakte/android/NoteAttachment;->nid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/vkontakte/android/NoteAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/vkontakte/android/NoteAttachment;->nid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
