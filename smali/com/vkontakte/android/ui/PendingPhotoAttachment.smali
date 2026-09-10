.class public Lcom/vkontakte/android/ui/PendingPhotoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "PendingPhotoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ThumbAttachment;


# instance fields
.field private breakAfter:Z

.field private displayH:I

.field private displayW:I

.field public fileUri:Ljava/lang/String;

.field private floating:Z

.field public h:I

.field public id:I

.field private paddingAfter:Z

.field public w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fillSize()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fillSize()V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayW:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayH:I

    return v0
.end method

.method private fillSize()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    iget-object v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 49
    .local v2, "u":Landroid/net/Uri;
    const-string v3, "impick"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "crop"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->h:I

    iput v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->w:I

    .line 62
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "u":Landroid/net/Uri;
    :goto_0
    return-void

    .line 54
    .restart local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "u":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getOriginalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 56
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 57
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 59
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->w:I

    .line 60
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "u":Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;-><init>(Lcom/vkontakte/android/ui/PendingPhotoAttachment;Landroid/content/Context;)V

    .line 83
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f020238

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->paddingAfter:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    :goto_0
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->floating:Z

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->breakAfter:Z

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 87
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->floating:Z

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 89
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-object v1

    .line 84
    .end local v0    # "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->h:I

    return v0
.end method

.method public getRatio()F
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->w:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->paddingAfter:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    :goto_0
    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->breakAfter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->floating:Z

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->breakAfter:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 148
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->floating:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 150
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayW:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 151
    iget v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayH:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 152
    return-object v0

    .line 145
    .end local v0    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->w:I

    return v0
.end method

.method public getWidth(C)I
    .locals 1
    .param p1, "size"    # C

    .prologue
    .line 140
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->w:I

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
    .line 100
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    return-void
.end method

.method public setPaddingAfter(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->paddingAfter:Z

    .line 121
    return-void
.end method

.method public setViewSize(FFZZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 112
    float-to-int v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayW:I

    .line 113
    float-to-int v0, p2

    iput v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->displayH:I

    .line 114
    iput-boolean p3, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->breakAfter:Z

    .line 115
    iput-boolean p4, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->floating:Z

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    return-void
.end method
