.class public Lcom/vkontakte/android/WikiAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "WikiAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/WikiAttachment$FLinearLayout;
    }
.end annotation


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
    .line 41
    new-instance v0, Lcom/vkontakte/android/WikiAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/WikiAttachment$1;-><init>()V

    .line 40
    sput-object v0, Lcom/vkontakte/android/WikiAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    .line 24
    iput p4, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/WikiAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x1

    .line 58
    new-instance v0, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;-><init>(Lcom/vkontakte/android/WikiAttachment;Landroid/content/Context;)V

    .line 59
    .local v0, "layout":Lcom/vkontakte/android/WikiAttachment$FLinearLayout;
    invoke-virtual {v0, v5}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->setOrientation(I)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 64
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 67
    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v3, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v3, Lcom/vkontakte/android/WikiAttachment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WikiAttachment$2;-><init>(Lcom/vkontakte/android/WikiAttachment;)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->addView(Landroid/view/View;)V

    .line 85
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
    .line 90
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/vkontakte/android/WikiAttachment;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
