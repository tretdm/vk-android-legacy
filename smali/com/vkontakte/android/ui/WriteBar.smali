.class public Lcom/vkontakte/android/ui/WriteBar;
.super Landroid/widget/LinearLayout;
.source "WriteBar.java"


# static fields
.field private static final AUDIO_RESULT:I = 0x2713

.field private static final DOC_RESULT:I = 0x2714

.field private static final LOCATION_RESULT:I = 0x2715

.field private static final PHOTO_RESULT:I = 0x2711

.field private static final VIDEO_RESULT:I = 0x2712


# instance fields
.field private attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private attachDivider:Landroid/view/View;

.field private fragment:Lcom/actionbarsherlock/app/SherlockFragment;

.field icons:[I

.field private mapAllowed:Z

.field private maxAtts:I

.field private onUplDone:Ljava/lang/Runnable;

.field private onUplFail:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 66
    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f020103
        0x7f020100
        0x7f020104
        0x7f020101
        0x7f020102
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 71
    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f020103
        0x7f020100
        0x7f020104
        0x7f020101
        0x7f020102
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->icons:[I

    .line 75
    invoke-direct {p0}, Lcom/vkontakte/android/ui/WriteBar;->init()V

    .line 76
    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f020103
        0x7f020100
        0x7f020104
        0x7f020101
        0x7f020102
    .end array-data
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/WriteBar;)Lcom/vkontakte/android/ui/AttachmentsEditorView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/WriteBar;Z)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/WriteBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/WriteBar;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/WriteBar;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/WriteBar;)Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 79
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/WriteBar;->setBackgroundColor(I)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setOrientation(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030072

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;)V

    .line 82
    const v1, 0x7f08017b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/WriteBar$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/WriteBar$1;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    const v2, -0x212122

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v0}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v1, Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42b60000    # 91.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/vkontakte/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v2, Lcom/vkontakte/android/ui/WriteBar$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/WriteBar$2;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkontakte/android/ui/AttachmentsEditorView$Callback;)V

    .line 131
    return-void
.end method

.method private setAttEditorVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 297
    iget-object v3, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void

    :cond_0
    move v0, v2

    .line 297
    goto :goto_0

    :cond_1
    move v1, v2

    .line 298
    goto :goto_1
.end method


# virtual methods
.method public addAttachment(Lcom/vkontakte/android/Attachment;)V
    .locals 1
    .param p1, "att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 289
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
    .line 345
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v3, 0x0

    .line 347
    .local v3, "i":I
    const/4 v2, 0x0

    .line 348
    .local v2, "found":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 356
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v5, Lcom/vkontakte/android/FwdMessagesAttachment;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FwdMessagesAttachment;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 357
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->removeNoCallback(I)V

    .line 358
    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 349
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v5, :cond_2

    .line 350
    const/4 v2, 0x1

    .line 351
    goto :goto_1

    .line 353
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public clearAttachments()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 284
    return-void
.end method

.method public focus()V
    .locals 4

    .prologue
    const v3, 0x7f080179

    .line 302
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 303
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 304
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 306
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
    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f080179

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
    .line 147
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
    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 309
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "On activity result, req="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    if-nez p3, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "On activity result 2, req="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 313
    const/16 v5, 0x2713

    if-ne p1, v5, :cond_2

    .line 314
    const-string v5, "audio"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .line 315
    .local v2, "file":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v6, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 317
    .end local v2    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const/16 v5, 0x2714

    if-ne p1, v5, :cond_3

    .line 318
    const-string v5, "document"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    .line 319
    .local v1, "doc":Lcom/vkontakte/android/api/Document;
    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v6, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v6, v1}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 321
    .end local v1    # "doc":Lcom/vkontakte/android/api/Document;
    :cond_3
    const/16 v5, 0x2712

    if-ne p1, v5, :cond_4

    .line 322
    const-string v5, "video"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/VideoFile;

    .line 323
    .local v4, "video":Lcom/vkontakte/android/api/VideoFile;
    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v6, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v6, v4}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 325
    .end local v4    # "video":Lcom/vkontakte/android/api/VideoFile;
    :cond_4
    const/16 v5, 0x2711

    if-ne p1, v5, :cond_5

    .line 326
    const-string v5, "attachment"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 327
    const-string v5, "attachment"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .line 328
    .local v0, "att":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    .line 339
    .end local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    :cond_5
    :goto_1
    const/16 v5, 0x2715

    if-ne p1, v5, :cond_0

    .line 340
    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    const-string v5, "point"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_0

    .line 329
    :cond_6
    const-string v5, "files"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 330
    const-string v5, "files"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 331
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    .local v2, "file":Ljava/lang/String;
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "add "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v6, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v7, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-direct {v7, v2}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_2

    .line 336
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->add(Lcom/vkontakte/android/Attachment;)V

    goto :goto_1
.end method

.method public openAttachMenu(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 159
    const v0, 0x7f02007e

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 160
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

    .line 163
    iget-object v4, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getCount()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    if-lt v4, v5, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601df

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

    .line 275
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/WriteBar$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/WriteBar$3;-><init>(Lcom/vkontakte/android/ui/WriteBar;)V

    .line 194
    .local v0, "attachAdapter":Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, "dlg":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 196
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 197
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 199
    iput p3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 200
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 202
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 203
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 204
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 206
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ui/WriteBar$4;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/ui/WriteBar$4;-><init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFlags(II)V

    .line 214
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 215
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v2, "lv":Landroid/widget/ListView;
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    new-instance v4, Lcom/vkontakte/android/ui/WriteBar$5;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/ui/WriteBar$5;-><init>(Lcom/vkontakte/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public setAttachLimits(IZ)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "allowMap"    # Z

    .prologue
    .line 292
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/WriteBar;->mapAllowed:Z

    .line 293
    iput p1, p0, Lcom/vkontakte/android/ui/WriteBar;->maxAtts:I

    .line 294
    return-void
.end method

.method public setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V
    .locals 0
    .param p1, "f"    # Lcom/actionbarsherlock/app/SherlockFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 135
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 155
    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setUploadType(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "oid"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput p1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadType:I

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput p2, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 140
    return-void
.end method

.method public waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onDone"    # Ljava/lang/Runnable;
    .param p2, "onFailed"    # Ljava/lang/Runnable;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/ui/WriteBar;->attEditor:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    .line 363
    iput-object p2, p0, Lcom/vkontakte/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
