.class public Lcom/vkontakte/android/GeoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "GeoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/GeoAttachment$FLinearLayout;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/GeoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public id:I

.field public lat:D

.field public lon:D

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/vkontakte/android/GeoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/GeoAttachment$1;-><init>()V

    .line 49
    sput-object v0, Lcom/vkontakte/android/GeoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 29
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "_lat"    # D
    .param p3, "_lon"    # D
    .param p5, "_title"    # Ljava/lang/String;
    .param p6, "_address"    # Ljava/lang/String;
    .param p7, "_id"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 32
    iput-wide p1, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 33
    iput-wide p3, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 34
    iput p7, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 35
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p5, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 36
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p6, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 37
    :cond_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GeoAttachment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "fl":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/vkontakte/android/ui/RoundedImageView;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/ui/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, "iv":Lcom/vkontakte/android/ui/RoundedImageView;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RoundedImageView;->setCornerRadius(I)V

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RoundedImageView;->setId(I)V

    .line 83
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x43020000    # 130.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "marker":Landroid/widget/ImageView;
    const v4, 0x7f0201bc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v3, "mparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x31

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    new-instance v4, Lcom/vkontakte/android/GeoAttachment$2;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/GeoAttachment$2;-><init>(Lcom/vkontakte/android/GeoAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v5, 0x1

    .line 110
    new-instance v0, Lcom/vkontakte/android/GeoAttachment$FLinearLayout;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/GeoAttachment$FLinearLayout;-><init>(Lcom/vkontakte/android/GeoAttachment;Landroid/content/Context;)V

    .line 111
    .local v0, "layout":Lcom/vkontakte/android/GeoAttachment$FLinearLayout;
    invoke-virtual {v0, v5}, Lcom/vkontakte/android/GeoAttachment$FLinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/GeoAttachment$FLinearLayout;->setOrientation(I)V

    .line 113
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v1, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 117
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 118
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 119
    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const v3, 0x7f090109

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/GeoAttachment$FLinearLayout;->addView(Landroid/view/View;)V

    .line 134
    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 141
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 68
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    iget v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
