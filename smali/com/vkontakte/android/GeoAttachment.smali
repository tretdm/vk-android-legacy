.class public Lcom/vkontakte/android/GeoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "GeoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ImageAttachment;


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

.field public photo:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/vkontakte/android/GeoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/GeoAttachment$1;-><init>()V

    .line 56
    sput-object v0, Lcom/vkontakte/android/GeoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 34
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "_lat"    # D
    .param p3, "_lon"    # D
    .param p5, "_title"    # Ljava/lang/String;
    .param p6, "_address"    # Ljava/lang/String;
    .param p7, "_id"    # I
    .param p8, "_photo"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 37
    iput-wide p1, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 38
    iput-wide p3, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 39
    iput p7, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 40
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p5, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 41
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p6, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 42
    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iput-object p8, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    .line 43
    :cond_2
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GeoAttachment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f090052

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    :goto_0
    return-void

    .line 202
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/GeoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 6

    .prologue
    .line 186
    iget v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0x82

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 91
    iget v5, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    if-lez v5, :cond_1

    .line 92
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 93
    .local v4, "v":Landroid/view/View;
    :goto_0
    const v5, 0x7f090050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v5, 0x7f090051

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v5, 0x7f090052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02010c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    new-instance v5, Lcom/vkontakte/android/GeoAttachment$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GeoAttachment$2;-><init>(Lcom/vkontakte/android/GeoAttachment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .end local v4    # "v":Landroid/view/View;
    :goto_1
    return-object v4

    .line 92
    :cond_0
    const-string v5, "common"

    invoke-static {p1, v5}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "fl":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "iv":Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 110
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x43020000    # 130.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v2, "marker":Landroid/widget/ImageView;
    const v5, 0x7f020202

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v3, "mparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x31

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 118
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 121
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v0, v8, v8, v8, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 125
    new-instance v5, Lcom/vkontakte/android/GeoAttachment$3;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/GeoAttachment$3;-><init>(Lcom/vkontakte/android/GeoAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v0

    .line 150
    goto :goto_1
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 169
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 170
    const/high16 v1, 0x43020000    # 130.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 171
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
    .line 156
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 158
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    goto :goto_2
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    const v1, 0x7f090052

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    :goto_0
    return-void

    .line 194
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 75
    iget-wide v0, p0, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget v0, p0, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/GeoAttachment;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
