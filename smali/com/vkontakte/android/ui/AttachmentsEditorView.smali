.class public Lcom/vkontakte/android/ui/AttachmentsEditorView;
.super Landroid/widget/HorizontalScrollView;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;
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

.field private receiver:Landroid/content/BroadcastReceiver;

.field private removeClickListener:Landroid/view/View$OnClickListener;

.field private retryClickListener:Landroid/view/View$OnClickListener;

.field public uploadOwnerId:I

.field public uploadType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 142
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 147
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 138
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 153
    invoke-direct {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->init()V

    .line 154
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/AttachmentsEditorView;)Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "att"    # Lcom/vkontakte/android/Attachment;
    .param p3, "index"    # I

    .prologue
    const/high16 v2, 0x42a00000    # 80.0f

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 327
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 328
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 331
    :cond_0
    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$6;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$6;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/view/View;)V

    .line 335
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/NewPostActivity;

    if-eqz v1, :cond_1

    const/16 v1, 0x190

    :goto_0
    int-to-long v3, v1

    .line 331
    invoke-virtual {p0, v2, v3, v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    return-void

    .line 335
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createFwdView(I)Landroid/view/View;
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d004d

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const v1, 0x7f08004e

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

    .line 351
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-object v0
.end method

.method private createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-object v0
.end method

.method private createLocationView(Lcom/vkontakte/android/GeoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/GeoAttachment;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$10;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/GeoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 526
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 527
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    return-object v0
.end method

.method private createPhotoView(Lcom/vkontakte/android/PhotoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkontakte/android/PhotoAttachment;

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 484
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$9;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/PhotoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 500
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    return-object v0
.end method

.method private createPhotoView(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)Landroid/view/View;
    .locals 5
    .param p1, "att"    # Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .prologue
    const v4, 0x7f080051

    .line 383
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/CircularProgressDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/CircularProgressDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 387
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$8;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/ui/PendingPhotoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 475
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 476
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    return-object v0
.end method

.method private createVideoView(Lcom/vkontakte/android/VideoAttachment;)Landroid/view/View;
    .locals 7
    .param p1, "att"    # Lcom/vkontakte/android/VideoAttachment;

    .prologue
    const v6, 0x7f080054

    .line 356
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/vkontakte/android/VideoAttachment;->duration:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/vkontakte/android/VideoAttachment;->duration:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$7;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/VideoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 368
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 369
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-object v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    .line 375
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 376
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

    .line 377
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 378
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 157
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    .line 158
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 161
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 162
    .local v2, "trans":Landroid/animation/LayoutTransition;
    invoke-virtual {v2, v9}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 163
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    .local v0, "animAdding":Landroid/animation/AnimatorSet;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v8, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v8, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    invoke-static {v8, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 165
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    new-instance v3, Lcom/vkontakte/android/ui/AttachmentsEditorView$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$4;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v2, v7, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 174
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 175
    .local v1, "animRemoving":Landroid/animation/AnimatorSet;
    new-array v3, v7, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    fill-array-data v5, :array_3

    invoke-static {v8, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "scaleY"

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    invoke-static {v8, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 176
    new-instance v3, Lcom/vkontakte/android/ui/AttachmentsEditorView$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$5;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 187
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 189
    .end local v0    # "animAdding":Landroid/animation/AnimatorSet;
    .end local v1    # "animRemoving":Landroid/animation/AnimatorSet;
    .end local v2    # "trans":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setFillViewport(Z)V

    .line 191
    return-void

    .line 164
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

    .line 175
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

.method private uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V
    .locals 5
    .param p1, "att"    # Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string v2, "file"

    iget-object v3, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v2, "id"

    iget v3, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v2, "type"

    iget v3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    iget v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    if-eqz v2, :cond_0

    .line 538
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "owner_id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v2, "_nopost"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "req params="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 544
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 545
    return-void
.end method


# virtual methods
.method public add(Lcom/vkontakte/android/Attachment;)V
    .locals 10
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 215
    const-string v6, "vk"

    const-string v7, "Attach editor add"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 217
    .local v1, "idx":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 218
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 219
    .local v3, "last":Lcom/vkontakte/android/Attachment;
    instance-of v6, v3, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v6, :cond_1

    instance-of v6, v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v6, :cond_1

    instance-of v6, v3, Lcom/vkontakte/android/VideoAttachment;

    if-nez v6, :cond_1

    instance-of v6, p1, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v6, :cond_0

    instance-of v6, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v6, :cond_0

    instance-of v6, p1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v6, :cond_1

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 221
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 229
    .end local v3    # "last":Lcom/vkontakte/android/Attachment;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 230
    instance-of v6, p1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 231
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkontakte/android/PhotoAttachment;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    .line 260
    .end local p1    # "att":Lcom/vkontakte/android/Attachment;
    :goto_1
    return-void

    .line 221
    .restart local v3    # "last":Lcom/vkontakte/android/Attachment;
    .restart local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 222
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v7, :cond_1

    .line 225
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    .end local v3    # "last":Lcom/vkontakte/android/Attachment;
    :cond_4
    instance-of v6, p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_5

    move-object v6, p1

    .line 233
    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    .line 234
    check-cast p1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local p1    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)V

    goto :goto_1

    .line 235
    .restart local p1    # "att":Lcom/vkontakte/android/Attachment;
    :cond_5
    instance-of v6, p1, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v6, :cond_6

    move-object v0, p1

    .line 236
    check-cast v0, Lcom/vkontakte/android/AudioAttachment;

    .line 237
    .local v0, "a":Lcom/vkontakte/android/AudioAttachment;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/vkontakte/android/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v8, v0, Lcom/vkontakte/android/AudioAttachment;->title:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto :goto_1

    .line 238
    .end local v0    # "a":Lcom/vkontakte/android/AudioAttachment;
    :cond_6
    instance-of v6, p1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v6, :cond_7

    move-object v6, p1

    .line 239
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createVideoView(Lcom/vkontakte/android/VideoAttachment;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto :goto_1

    .line 240
    :cond_7
    instance-of v6, p1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v6, :cond_8

    move-object v0, p1

    .line 241
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .line 242
    .local v0, "a":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v6, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "sp":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 244
    .end local v0    # "a":Lcom/vkontakte/android/DocumentAttachment;
    .end local v5    # "sp":[Ljava/lang/String;
    :cond_8
    instance-of v6, p1, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v6, :cond_9

    move-object v6, p1

    .line 245
    check-cast v6, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocationView(Lcom/vkontakte/android/GeoAttachment;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 246
    :cond_9
    instance-of v6, p1, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v6, :cond_a

    move-object v6, p1

    .line 247
    check-cast v6, Lcom/vkontakte/android/FwdMessagesAttachment;

    iget-object v6, v6, Lcom/vkontakte/android/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createFwdView(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 248
    :cond_a
    instance-of v6, p1, Lcom/vkontakte/android/PostAttachment;

    if-eqz v6, :cond_b

    move-object v6, p1

    .line 249
    check-cast v6, Lcom/vkontakte/android/PostAttachment;

    iget-object v4, v6, Lcom/vkontakte/android/PostAttachment;->post:Lcom/vkontakte/android/NewsEntry;

    .line 250
    .local v4, "post":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060137

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 251
    .end local v4    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_b
    instance-of v6, p1, Lcom/vkontakte/android/LinkAttachment;

    if-eqz v6, :cond_c

    move-object v2, p1

    .line 252
    check-cast v2, Lcom/vkontakte/android/LinkAttachment;

    .line 253
    .local v2, "la":Lcom/vkontakte/android/LinkAttachment;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    const-string v8, "http://"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "https://"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 254
    .end local v2    # "la":Lcom/vkontakte/android/LinkAttachment;
    :cond_c
    instance-of v6, p1, Lcom/vkontakte/android/PollAttachment;

    if-eqz v6, :cond_d

    move-object v2, p1

    .line 255
    check-cast v2, Lcom/vkontakte/android/PollAttachment;

    .line 256
    .local v2, "la":Lcom/vkontakte/android/PollAttachment;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->createImagelessView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkontakte/android/Attachment;I)V

    goto/16 :goto_1

    .line 258
    .end local v2    # "la":Lcom/vkontakte/android/PollAttachment;
    :cond_d
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown attachment: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V

    .line 289
    :cond_0
    return-void
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
    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "size":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    return v1

    .line 277
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 278
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/GeoAttachment;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-nez v3, :cond_0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isUploading()Z
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 292
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 293
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_0

    .line 294
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.vkontakte.android.UPLOAD_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 306
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 307
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 308
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkontakte/android/Attachment;)V

    .line 309
    :cond_0
    instance-of v2, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_1

    .line 310
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v2, "id"

    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget v3, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 315
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public remove(Lcom/vkontakte/android/Attachment;)V
    .locals 3
    .param p1, "a"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 263
    const/4 v1, -0x1

    .line 264
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 270
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->remove(I)V

    .line 273
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 266
    move v1, v0

    .line 267
    goto :goto_1

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeNoCallback(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->callback:Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;

    .line 212
    return-void
.end method
