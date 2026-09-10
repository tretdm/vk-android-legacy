.class public Lcom/vkontakte/android/VideoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "VideoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ThumbAttachment;
.implements Lcom/vkontakte/android/ImageAttachment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/VideoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public bigImage:Ljava/lang/String;

.field private transient breakAfter:Z

.field private transient displayH:I

.field private transient displayW:I

.field public duration:I

.field private transient floating:Z

.field public image:Ljava/lang/String;

.field public oid:I

.field private transient paddingAfter:Z

.field public referer:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vfile:Lcom/vkontakte/android/api/VideoFile;

.field public vid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/vkontakte/android/VideoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/VideoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/VideoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 1
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 47
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 50
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 51
    iget v0, p1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 52
    iget-object v0, p1, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->bigImage:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 32
    iput p4, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 33
    iput p5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I
    .param p6, "_akey"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    .line 40
    iput p4, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    .line 41
    iput p5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    .line 42
    iput-object p6, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 43
    const-string v0, ""

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    check-cast p1, Lcom/vkontakte/android/VideoAttachView;

    .end local p1    # "view":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/VideoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 198
    const/16 v0, 0x960

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 180
    const v0, 0x3faaaaab

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "big"    # Z

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v2, 0x40000000    # 2.0f

    const v9, 0x7f08003b

    const v8, 0x7f080038

    const/4 v3, 0x0

    .line 107
    if-nez p2, :cond_4

    .line 108
    const-string v4, "video"

    invoke-static {p1, v4}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/VideoAttachView;

    .line 112
    .local v1, "vav":Lcom/vkontakte/android/VideoAttachView;
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v4, :cond_5

    .line 113
    new-instance v4, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v4}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 114
    iget-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v5, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    iput v5, v4, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 115
    iget-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v5, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    iput v5, v4, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 116
    iget-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 117
    iget-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v5, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    iput v5, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 118
    iget-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    iput-object v5, v4, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 122
    :goto_1
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get view ref "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->referer:Ljava/lang/String;

    .line 124
    const v4, 0x7f080048

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    iget v7, p0, Lcom/vkontakte/android/VideoAttachment;->displayH:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-boolean v5, p0, Lcom/vkontakte/android/VideoAttachment;->paddingAfter:Z

    if-eqz v5, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    :cond_0
    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v4, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/VideoAttachment;->breakAfter:Z

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 127
    iget-boolean v2, p0, Lcom/vkontakte/android/VideoAttachment;->floating:Z

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 128
    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    iput v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 129
    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->displayH:I

    iput v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 130
    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    if-lt v2, v4, :cond_1

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->displayH:I

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 131
    :cond_1
    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_2
    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    if-le v2, v4, :cond_7

    .line 136
    invoke-virtual {v1, v8}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_3
    invoke-virtual {v1, v8}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    const/16 v4, 0xe10

    if-ge v2, v4, :cond_8

    .line 143
    invoke-virtual {v1, v9}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget v7, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_4
    invoke-virtual {v1, v9}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v2, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    if-lez v2, :cond_9

    move v2, v3

    :goto_5
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    if-eqz p2, :cond_3

    .line 148
    const v2, 0x7f08004c

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f07006c

    iget-object v5, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->views:I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_3
    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/VideoAttachView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-object v1

    .line 110
    .end local v0    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .end local v1    # "vav":Lcom/vkontakte/android/VideoAttachView;
    :cond_4
    const v4, 0x7f030010

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/VideoAttachView;

    .restart local v1    # "vav":Lcom/vkontakte/android/VideoAttachView;
    goto/16 :goto_0

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iput-object v4, v1, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    goto/16 :goto_1

    .line 133
    .restart local v0    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_6
    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 138
    :cond_7
    invoke-virtual {v1, v8}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 145
    :cond_8
    invoke-virtual {v1, v9}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    div-int/lit16 v6, v6, 0xe10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget v7, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    div-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 146
    :cond_9
    const/4 v2, 0x4

    goto/16 :goto_5
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/VideoAttachment;->getView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 4

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 217
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget-boolean v3, p0, Lcom/vkontakte/android/VideoAttachment;->paddingAfter:Z

    if-eqz v3, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    :cond_0
    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/vkontakte/android/VideoAttachment;->breakAfter:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/VideoAttachment;->floating:Z

    if-eqz v1, :cond_2

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/VideoAttachment;->breakAfter:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 220
    iget-boolean v1, p0, Lcom/vkontakte/android/VideoAttachment;->floating:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 222
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 223
    iget v1, p0, Lcom/vkontakte/android/VideoAttachment;->displayH:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 224
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0xc80

    return v0
.end method

.method public getWidth(C)I
    .locals 1
    .param p1, "size"    # C

    .prologue
    .line 208
    const/16 v0, 0xc80

    return v0
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
    .line 163
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 176
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/VideoFile;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_2

    .line 175
    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 234
    check-cast p1, Lcom/vkontakte/android/VideoAttachView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    return-void
.end method

.method public setPaddingAfter(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoAttachment;->paddingAfter:Z

    .line 159
    return-void
.end method

.method public setViewSize(FFZZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 185
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->displayW:I

    .line 186
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/VideoAttachment;->displayH:I

    .line 187
    iput-boolean p3, p0, Lcom/vkontakte/android/VideoAttachment;->breakAfter:Z

    .line 188
    iput-boolean p4, p0, Lcom/vkontakte/android/VideoAttachment;->floating:Z

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->bigImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->vid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/vkontakte/android/VideoAttachment;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_1
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/api/VideoFile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1
.end method
