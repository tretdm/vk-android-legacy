.class public Lcom/vkontakte/android/ui/WriteBar;
.super Landroid/widget/LinearLayout;
.source "WriteBar.java"


# static fields
.field private static final AUDIO_RESULT:I = 0x2713

.field private static final DOC_RESULT:I = 0x2714

.field private static final LOCATION_RESULT:I = 0x2715

.field private static final PHOTO_RESULT:I = 0x2711

.field private static final VIDEO_EXISTING_RESULT:I = 0x2716

.field private static final VIDEO_NEW_RESULT:I = 0x2717

.field private static final VIDEO_RESULT:I = 0x2712


# instance fields
.field private attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private attachDivider:Landroid/view/View;

.field private fragment:Lcom/actionbarsherlock/app/SherlockFragment;

.field icons:[I

.field public isChat:Z

.field private mapAllowed:Z

.field private maxAtts:I

.field private onUplDone:Ljava/lang/Runnable;

.field private onUplFail:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    .line 78
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 79
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x7f020112
        0x7f02010f
        0x7f020113
        0x7f020110
        0x7f020111
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 84
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x7f020112
        0x7f02010f
        0x7f020113
        0x7f020110
        0x7f020111
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    .line 88
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 89
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x7f020112
        0x7f02010f
        0x7f020113
        0x7f020110
        0x7f020111
    .end array-data
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/WriteBar;Z)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/WriteBar;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/WriteBar;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/WriteBar;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->chooseVideo()V

    return-void
.end method

.method private chooseVideo()V
    .locals 4

    .prologue
    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "VideoListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    iget-object v2, p0, Lcom/vkontakte/android/ui/WriteBar;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    const/16 v3, 0x2712

    invoke-virtual {v2, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 92
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/WriteBar;->setBackgroundColor(I)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setOrientation(I)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03009a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;)V

    .line 95
    const v1, 0x7f090201

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/WriteBar$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/WriteBar$1;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    const v2, -0x212122

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v0}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42b60000    # 91.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v2, Lcom/vkontakte/android/ui/WriteBar$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/WriteBar$2;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/WriteBar$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/WriteBar$3;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    invoke-static {p0}, Lcom/vkontakte/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 156
    :cond_0
    return-void
.end method

.method private setAttEditorVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 369
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void

    :cond_0
    move v0, v2

    .line 369
    goto :goto_0

    :cond_1
    move v1, v2

    .line 370
    goto :goto_1
.end method


# virtual methods
.method public addAttachment(Lcom/vkontakte/android/Attachment;)V
    .locals 1
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 361
    return-void
.end method

.method public addFwdMessages(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 440
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v3, 0x0

    .line 441
    .local v3, "i":I
    const/4 v2, 0x0

    .line 442
    .local v2, "found":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 450
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v5, Lcom/vkontakte/android/FwdMessagesAttachment;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FwdMessagesAttachment;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 451
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeWithoutCallback(I)V

    .line 452
    :cond_0
    return-void

    .line 442
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 443
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v5, :cond_2

    .line 444
    const/4 v2, 0x1

    .line 445
    goto :goto_1

    .line 447
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public clearAttachments()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 356
    return-void
.end method

.method public focus()V
    .locals 4

    .prologue
    const v3, 0x7f0901ff

    .line 374
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 375
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 376
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 378
    return-void
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
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
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f0901ff

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTextEmpty()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 382
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    if-nez p3, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 385
    const/16 v12, 0x2713

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 386
    const-string v12, "audio"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioFile;

    .line 387
    .local v4, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v12, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v13, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v13, v4}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 389
    .end local v4    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const/16 v12, 0x2714

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 392
    const-string v12, "documents"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    .local v2, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 397
    .end local v2    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_3
    const/16 v12, 0x2712

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 398
    const-string v12, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/api/VideoFile;

    .line 399
    .local v10, "video":Lcom/vkontakte/android/api/VideoFile;
    iget-object v12, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v13, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v13, v10}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 401
    .end local v10    # "video":Lcom/vkontakte/android/api/VideoFile;
    :cond_4
    const/16 v12, 0x2711

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 402
    const-string v12, "attachment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 403
    const-string v12, "attachment"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment;

    .line 404
    .local v1, "att":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v12, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v12, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 415
    .end local v1    # "att":Lcom/vkontakte/android/PhotoAttachment;
    :cond_5
    :goto_2
    const/16 v12, 0x2715

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 416
    iget-object v13, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    const-string v12, "point"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v13, v12}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 418
    :cond_6
    const/16 v12, 0x2717

    move/from16 v0, p1

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2716

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 419
    :cond_7
    const/4 v3, 0x0

    .line 421
    .local v3, "duration":I
    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 422
    .local v6, "mdr":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 423
    const/16 v12, 0x9

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    div-int/lit16 v3, v12, 0x3e8

    .line 424
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v6    # "mdr":Landroid/media/MediaMetadataRetriever;
    :goto_3
    new-instance v9, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v9}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 429
    .local v9, "vf":Lcom/vkontakte/android/api/VideoFile;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 430
    iput v3, v9, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 431
    const-string v12, "file"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    :goto_4
    iput-object v12, v9, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 432
    new-instance v8, Lcom/vkontakte/android/PendingVideoAttachment;

    invoke-direct {v8, v9}, Lcom/vkontakte/android/PendingVideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .line 433
    .local v8, "pva":Lcom/vkontakte/android/PendingVideoAttachment;
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v12

    iput v12, v8, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    .line 434
    iget-object v12, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v12, v8}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_0

    .line 393
    .end local v3    # "duration":I
    .end local v8    # "pva":Lcom/vkontakte/android/PendingVideoAttachment;
    .end local v9    # "vf":Lcom/vkontakte/android/api/VideoFile;
    .restart local v2    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 394
    .local v7, "p":Landroid/os/Parcelable;
    iget-object v13, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .end local v7    # "p":Landroid/os/Parcelable;
    invoke-virtual {v13, v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_1

    .line 405
    .end local v2    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_9
    const-string v12, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 406
    const-string v12, "files"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 407
    .local v5, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    .local v4, "file":Ljava/lang/String;
    iget-object v13, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v14, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {v14, v4}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_5

    .line 412
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget-object v12, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    const-string v14, "file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_2

    .line 425
    .restart local v3    # "duration":I
    :catch_0
    move-exception v11

    .line 426
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    const-string v13, "Error getting video duration!"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 431
    .end local v11    # "x":Ljava/lang/Exception;
    .restart local v9    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "file://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4
.end method

.method public openAttachMenu(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 186
    const v0, 0x7f02007e

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 187
    return-void
.end method

.method public openAttachMenu(IIII)V
    .locals 10
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bg"    # I

    .prologue
    const/high16 v6, 0x43430000    # 195.0f

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 190
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    if-lt v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    if-nez v4, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801f9

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 338
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/WriteBar$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/WriteBar$4;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    .line 221
    .local v0, "attachAdapter":Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 222
    .local v1, "dlg":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 223
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 224
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 225
    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 226
    iput p3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 227
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 229
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 230
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 231
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 233
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ui/WriteBar$5;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/ui/WriteBar$5;-><init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFlags(II)V

    .line 241
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 243
    .local v2, "lv":Landroid/widget/ListView;
    const v4, 0x7f0200e6

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 244
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    new-instance v4, Lcom/vkontakte/android/ui/WriteBar$6;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/ui/WriteBar$6;-><init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public setAttachLimits(IZ)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "allowMap"    # Z

    .prologue
    .line 364
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 365
    iput p1, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 366
    return-void
.end method

.method public setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V
    .locals 0
    .param p1, "f"    # Lcom/actionbarsherlock/app/SherlockFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 160
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    const v0, 0x7f0901ff

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setUploadType(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "oid"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput p1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput p2, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 165
    return-void
.end method

.method public waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onDone"    # Ljava/lang/Runnable;
    .param p2, "onFailed"    # Ljava/lang/Runnable;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    .line 457
    iput-object p2, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
