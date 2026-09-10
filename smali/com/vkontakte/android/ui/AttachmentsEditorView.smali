.class public Lcom/vkontakte/android/ui/AttachmentsEditorView;
.super Landroid/widget/HorizontalScrollView;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;,
        Lcom/vkontakte/android/ui/AttachmentsEditorView$ScrollRunner;
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

.field private content:Landroid/widget/LinearLayout;

.field private dragPos:I

.field private dragStartX:F

.field private dragStartY:F

.field private dragView:Landroid/view/View;

.field private initTime:J

.field private lastTouchX:F

.field private lastTouchY:F

.field private receiver:Landroid/content/BroadcastReceiver;

.field private removeClickListener:Landroid/view/View$OnClickListener;

.field private retryClickListener:Landroid/view/View$OnClickListener;

.field private scrollRunner:Ljava/lang/Runnable;

.field public uploadOwnerId:I

.field public uploadType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 216
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->initTime:J

    .line 225
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 216
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->initTime:J

    .line 230
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 216
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->initTime:J

    .line 236
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 237
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingDocumentAttachment;)V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkontakte/android/PendingDocumentAttachment;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/AttachmentsEditorView;)I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/AttachmentsEditorView;)F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchX:F

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/AttachmentsEditorView;)F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchY:F

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/AttachmentsEditorView;F)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartY:F

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/AttachmentsEditorView;I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingVideoAttachment;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadVideo(Lcom/vkontakte/android/PendingVideoAttachment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/AttachmentsEditorView;)F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartX:F

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/AttachmentsEditorView;F)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartX:F

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->updateDragPosition()V

    return-void
.end method

.method private addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "att"    # Lcom/vkontakte/android/Attachment;
    .param p3, "index"    # I

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    .line 525
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/AttachmentsEditorView$9;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/ui/AttachmentsEditorView$9;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->initTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    int-to-double v2, p3

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 544
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$10;

    invoke-direct {v0, p0, p3}, Lcom/vkontakte/android/ui/AttachmentsEditorView$10;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;I)V

    .line 548
    const-wide/16 v1, 0x96

    .line 544
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 552
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$11;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    :cond_2
    return-void
.end method

.method private canReorder(Lcom/vkontakte/android/Attachment;Lcom/vkontakte/android/Attachment;)Z
    .locals 3
    .param p1, "a"    # Lcom/vkontakte/android/Attachment;
    .param p2, "b"    # Lcom/vkontakte/android/Attachment;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    instance-of v2, p1, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v1

    .line 963
    :cond_1
    instance-of v2, p1, Lcom/vkontakte/android/GeoAttachment;

    if-nez v2, :cond_0

    .line 966
    instance-of v2, p1, Lcom/vkontakte/android/AlbumAttachment;

    if-eqz v2, :cond_2

    .line 967
    instance-of v1, p2, Lcom/vkontakte/android/AlbumAttachment;

    goto :goto_0

    .line 969
    :cond_2
    instance-of v2, p1, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_5

    .line 970
    :cond_3
    instance-of v2, p2, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v2, :cond_4

    instance-of v2, p2, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0

    .line 972
    :cond_5
    instance-of v2, p1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_6

    .line 973
    instance-of v1, p2, Lcom/vkontakte/android/VideoAttachment;

    goto :goto_0

    .line 975
    :cond_6
    instance-of v2, p1, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_7

    .line 976
    instance-of v1, p2, Lcom/vkontakte/android/AudioAttachment;

    goto :goto_0

    .line 978
    :cond_7
    instance-of v2, p1, Lcom/vkontakte/android/PollAttachment;

    if-eqz v2, :cond_8

    .line 979
    instance-of v1, p2, Lcom/vkontakte/android/PollAttachment;

    goto :goto_0

    .line 981
    :cond_8
    instance-of v2, p1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_9

    .line 982
    instance-of v1, p2, Lcom/vkontakte/android/DocumentAttachment;

    goto :goto_0

    .line 984
    :cond_9
    instance-of v2, p2, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkontakte/android/VideoAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkontakte/android/AudioAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkontakte/android/PollAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method private createDocumentView(Lcom/vkontakte/android/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/DocumentAttachment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 787
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$15;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/DocumentAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 803
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 804
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    return-object v0
.end method

.method private createFwdView(I)Landroid/view/View;
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d004d

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    return-object v0
.end method

.method private createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "progress"    # Z

    .prologue
    const v4, 0x7f09005a

    .line 580
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p4, :cond_1

    const v1, 0x7f03001d

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    if-eqz p4, :cond_0

    .line 585
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 588
    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    :cond_0
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    return-object v0

    .line 580
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const v1, 0x7f03001c

    goto :goto_0
.end method

.method private createLocalImageView(Ljava/lang/String;I)Landroid/view/View;
    .locals 4
    .param p1, "fileUri"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const v3, 0x7f09005a

    .line 661
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 662
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 665
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 755
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 756
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    return-object v0
.end method

.method private createLocationView(Lcom/vkontakte/android/GeoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 811
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/GeoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 830
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 831
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    return-object v0
.end method

.method private createPendingDocumentView(Lcom/vkontakte/android/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "att"    # Lcom/vkontakte/android/DocumentAttachment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v1, p1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    const v2, 0x7f03001a

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-object v0
.end method

.method private createPhotoView(Lcom/vkontakte/android/PhotoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/PhotoAttachment;

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 764
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$14;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PhotoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 779
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 780
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    return-object v0
.end method

.method private createPhotoView(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)Landroid/view/View;
    .locals 2
    .param p1, "att"    # Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .prologue
    .line 650
    iget-object v0, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    const v1, 0x7f03001e

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createVideoView(Lcom/vkontakte/android/VideoAttachment;)Landroid/view/View;
    .locals 9
    .param p1, "att"    # Lcom/vkontakte/android/VideoAttachment;

    .prologue
    const v8, 0x7f09005e

    const/4 v7, 0x0

    const v6, 0x7f09005a

    .line 603
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkontakte/android/VideoAttachment;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget v5, p1, Lcom/vkontakte/android/VideoAttachment;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 606
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$12;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/VideoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 629
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 630
    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    instance-of v1, p1, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 635
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 637
    :cond_0
    return-object v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 641
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    .line 642
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 643
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 644
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 645
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 646
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    new-instance v1, Lcom/vkontakte/android/ui/AttachmentsEditorView$4;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView$4;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    .line 256
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 259
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 260
    .local v0, "trans":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 261
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->resetTransitionAnims()V

    .line 263
    .end local v0    # "trans":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addView(Landroid/view/View;)V

    .line 264
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setFillViewport(Z)V

    .line 265
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setHorizontalScrollBarEnabled(Z)V

    .line 266
    return-void
.end method

.method private resetTransitionAnims()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 269
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 270
    .local v2, "trans":Landroid/animation/LayoutTransition;
    invoke-virtual {v2, v8}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 271
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 272
    .local v0, "animAdding":Landroid/animation/AnimatorSet;
    new-array v3, v11, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 273
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Lcom/vkontakte/android/ui/AttachmentsEditorView$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$5;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    new-instance v3, Lcom/vkontakte/android/ui/AttachmentsEditorView$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$6;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {v2, v7, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 290
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 291
    .local v1, "animRemoving":Landroid/animation/AnimatorSet;
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_3

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "rotation"

    new-array v5, v10, [F

    const/high16 v6, 0x42b40000    # 90.0f

    aput v6, v5, v8

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "alpha"

    new-array v5, v10, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 292
    new-instance v3, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    invoke-virtual {v2, v11, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 302
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v10, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 303
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 304
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v7, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 305
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v11, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 306
    return-void

    .line 272
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 291
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private updateDragPosition()V
    .locals 8

    .prologue
    .line 913
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchX:F

    iget v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartX:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 914
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchY:F

    iget v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartY:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 915
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 917
    .local v2, "dpos":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 918
    .local v3, "rdpos":I
    iget v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    if-eq v3, v4, :cond_0

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 919
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Attachment;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    invoke-direct {p0, v4, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->canReorder(Lcom/vkontakte/android/Attachment;Lcom/vkontakte/android/Attachment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 921
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 922
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 923
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 924
    .local v1, "b":Lcom/vkontakte/android/Attachment;
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 927
    iget v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartX:F

    iget v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragStartX:F

    .line 928
    iput v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragPos:I

    .line 931
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    .end local v1    # "b":Lcom/vkontakte/android/Attachment;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 932
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 933
    new-instance v4, Lcom/vkontakte/android/ui/AttachmentsEditorView$ScrollRunner;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$ScrollRunner;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;I)V

    iput-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    .line 934
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    .line 947
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 937
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 938
    new-instance v4, Lcom/vkontakte/android/ui/AttachmentsEditorView$ScrollRunner;

    const/4 v5, -0x1

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView$ScrollRunner;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;I)V

    iput-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    .line 939
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 942
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 943
    iget-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 944
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private uploadDocument(Lcom/vkontakte/android/PendingDocumentAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkontakte/android/PendingDocumentAttachment;

    .prologue
    .line 856
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$18;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingDocumentAttachment;)V

    .line 871
    const-wide/16 v1, 0x12c

    .line 856
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 872
    return-void
.end method

.method private uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .prologue
    .line 836
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$17;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$17;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    .line 852
    const-wide/16 v1, 0x12c

    .line 836
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 853
    return-void
.end method

.method private uploadVideo(Lcom/vkontakte/android/PendingVideoAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkontakte/android/PendingVideoAttachment;

    .prologue
    .line 875
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$19;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PendingVideoAttachment;)V

    .line 892
    const-wide/16 v1, 0x12c

    .line 875
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    return-void
.end method


# virtual methods
.method public add(Lcom/vkontakte/android/Attachment;)V
    .locals 25
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 330
    const-string v19, "vk"

    const-string v20, "Attach editor add"

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 332
    .local v11, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 343
    const/4 v14, 0x0

    .local v14, "photos":I
    const/4 v6, 0x0

    .local v6, "albums":I
    const/16 v18, 0x0

    .local v18, "videos":I
    const/4 v7, 0x0

    .local v7, "audios":I
    const/4 v15, 0x0

    .local v15, "polls":I
    const/4 v9, 0x0

    .local v9, "docs":I
    const/4 v13, 0x0

    .local v13, "others":I
    const/4 v10, 0x0

    .line 344
    .local v10, "fwds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 363
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/AlbumAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 364
    add-int v11, v14, v6

    .line 378
    :goto_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v11, v19, v10

    .line 381
    .end local v6    # "albums":I
    .end local v7    # "audios":I
    .end local v9    # "docs":I
    .end local v10    # "fwds":I
    .end local v13    # "others":I
    .end local v14    # "photos":I
    .end local v15    # "polls":I
    .end local v18    # "videos":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 382
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 383
    check-cast v19, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkontakte/android/PhotoAttachment;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    .line 434
    .end local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    :goto_2
    return-void

    .line 344
    .restart local v6    # "albums":I
    .restart local v7    # "audios":I
    .restart local v9    # "docs":I
    .restart local v10    # "fwds":I
    .restart local v13    # "others":I
    .restart local v14    # "photos":I
    .restart local v15    # "polls":I
    .restart local v18    # "videos":I
    .restart local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 345
    .local v5, "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/AlbumAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 346
    add-int/lit8 v6, v6, 0x1

    .line 347
    goto :goto_0

    :cond_3
    instance-of v0, v5, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v20, v0

    if-nez v20, :cond_4

    instance-of v0, v5, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 348
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 349
    goto :goto_0

    :cond_5
    instance-of v0, v5, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 350
    add-int/lit8 v18, v18, 0x1

    .line 351
    goto :goto_0

    :cond_6
    instance-of v0, v5, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 352
    add-int/lit8 v7, v7, 0x1

    .line 353
    goto :goto_0

    :cond_7
    instance-of v0, v5, Lcom/vkontakte/android/PollAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 354
    add-int/lit8 v15, v15, 0x1

    .line 355
    goto/16 :goto_0

    :cond_8
    instance-of v0, v5, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 356
    add-int/lit8 v9, v9, 0x1

    .line 357
    goto/16 :goto_0

    :cond_9
    instance-of v0, v5, Lcom/vkontakte/android/FwdMessagesAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 358
    add-int/lit8 v10, v10, 0x1

    .line 359
    goto/16 :goto_0

    .line 360
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 365
    .end local v5    # "a":Lcom/vkontakte/android/Attachment;
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v19, v0

    if-nez v19, :cond_c

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 366
    :cond_c
    move v11, v14

    .line 367
    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 368
    add-int v19, v14, v6

    add-int v11, v19, v18

    .line 369
    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 370
    add-int v19, v14, v6

    add-int v19, v19, v18

    add-int v11, v19, v7

    .line 371
    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PollAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 372
    add-int v19, v14, v6

    add-int v19, v19, v18

    add-int v19, v19, v7

    add-int v11, v19, v15

    .line 373
    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 374
    add-int v19, v14, v6

    add-int v19, v19, v18

    add-int v19, v19, v7

    add-int v19, v19, v15

    add-int v11, v19, v9

    .line 375
    goto/16 :goto_1

    .line 376
    :cond_11
    add-int v19, v14, v6

    add-int v19, v19, v18

    add-int v19, v19, v7

    add-int v19, v19, v15

    add-int v19, v19, v9

    add-int v11, v19, v13

    goto/16 :goto_1

    .line 384
    .end local v6    # "albums":I
    .end local v7    # "audios":I
    .end local v9    # "docs":I
    .end local v10    # "fwds":I
    .end local v13    # "others":I
    .end local v14    # "photos":I
    .end local v15    # "polls":I
    .end local v18    # "videos":I
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v19, p1

    .line 385
    check-cast v19, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    .line 386
    check-cast p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local p1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    goto/16 :goto_2

    .line 387
    .restart local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v5, p1

    .line 388
    check-cast v5, Lcom/vkontakte/android/AudioAttachment;

    .line 389
    .local v5, "a":Lcom/vkontakte/android/AudioAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08002f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v5, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v5, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 390
    .end local v5    # "a":Lcom/vkontakte/android/AudioAttachment;
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v19, p1

    .line 391
    check-cast v19, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createVideoView(Lcom/vkontakte/android/VideoAttachment;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    .line 392
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 393
    check-cast p1, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local p1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadVideo(Lcom/vkontakte/android/PendingVideoAttachment;)V

    goto/16 :goto_2

    .line 395
    .restart local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v5, p1

    .line 396
    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    .line 397
    .local v5, "a":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\\."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 398
    .local v17, "sp":[Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v19, p1

    .line 399
    check-cast v19, Lcom/vkontakte/android/PendingDocumentAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkontakte/android/PendingDocumentAttachment;)V

    .line 401
    :cond_16
    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_18

    .line 402
    instance-of v0, v5, Lcom/vkontakte/android/PendingDocumentAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 403
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v17, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v5, Lcom/vkontakte/android/DocumentAttachment;->size:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPendingDocumentView(Lcom/vkontakte/android/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 405
    :cond_17
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v17, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v5, Lcom/vkontakte/android/DocumentAttachment;->size:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createDocumentView(Lcom/vkontakte/android/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 407
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080031

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v17, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v5, Lcom/vkontakte/android/DocumentAttachment;->size:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 409
    .end local v5    # "a":Lcom/vkontakte/android/DocumentAttachment;
    .end local v17    # "sp":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/GeoAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v19, p1

    .line 410
    check-cast v19, Lcom/vkontakte/android/GeoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocationView(Lcom/vkontakte/android/GeoAttachment;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 411
    :cond_1a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    move-object/from16 v19, p1

    .line 412
    check-cast v19, Lcom/vkontakte/android/FwdMessagesAttachment;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createFwdView(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 413
    :cond_1b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PostAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    move-object/from16 v19, p1

    .line 414
    check-cast v19, Lcom/vkontakte/android/PostAttachment;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/PostAttachment;->post:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v16, v0

    .line 415
    .local v16, "post":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080150

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 416
    .end local v16    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_1c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/LinkAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v12, p1

    .line 417
    check-cast v12, Lcom/vkontakte/android/LinkAttachment;

    .line 418
    .local v12, "la":Lcom/vkontakte/android/LinkAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08003e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v12, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "http://"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "https://"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    iget-object v0, v12, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 419
    .end local v12    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_1d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkontakte/android/PollAttachment;

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v12, p1

    .line 420
    check-cast v12, Lcom/vkontakte/android/PollAttachment;

    .line 421
    .local v12, "la":Lcom/vkontakte/android/PollAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08003d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v12, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    .line 422
    .local v8, "av":Landroid/view/View;
    new-instance v19, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PollAttachment;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1, v11}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_2

    .line 432
    .end local v8    # "av":Landroid/view/View;
    .end local v12    # "la":Lcom/vkontakte/android/PollAttachment;
    :cond_1e
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Unknown attachment: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V

    .line 467
    :cond_0
    return-void
.end method

.method public containsGeoAttachment()Z
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 517
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 518
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v0, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_0

    .line 519
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchX:F

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->lastTouchY:F

    .line 898
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->updateDragPosition()V

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 902
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->resetTransitionAnims()V

    .line 903
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 904
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    goto :goto_0

    .line 908
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v0, "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 484
    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "size":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 456
    return v1

    .line 451
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 452
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/GeoAttachment;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-nez v3, :cond_0

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isUploading()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 470
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 470
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 471
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v3, :cond_1

    .line 473
    instance-of v3, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-nez v3, :cond_1

    .line 475
    instance-of v3, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 309
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "com.vkontakte.android.UPLOAD_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 316
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 488
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 489
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 490
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V

    .line 491
    :cond_0
    instance-of v2, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_1

    .line 492
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v3, "id"

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v2, v2, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 497
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    instance-of v2, v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v2, :cond_2

    .line 498
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v3, "id"

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v2, v2, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    instance-of v2, v0, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v2, :cond_3

    .line 504
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v2, "id"

    check-cast v0, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget v3, v0, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 509
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public remove(Lcom/vkontakte/android/Attachment;)V
    .locals 3
    .param p1, "a"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 437
    const/4 v1, -0x1

    .line 438
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 444
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->remove(I)V

    .line 447
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 440
    move v1, v0

    .line 441
    goto :goto_1

    .line 438
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeWithoutCallback(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 513
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    .line 327
    return-void
.end method
