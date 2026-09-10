.class public Lcom/vkontakte/android/PollEditorActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "PollEditorActivity.java"


# instance fields
.field private changeListener:Landroid/text/TextWatcher;

.field private editOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PollOption;",
            ">;"
        }
    .end annotation
.end field

.field private okBtn:Landroid/view/View;

.field private options:Landroid/view/ViewGroup;

.field private origEditOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PollOption;",
            ">;"
        }
    .end annotation
.end field

.field private poll:Lcom/vkontakte/android/PollAttachment;

.field private prevHeight:I

.field private removeClickListener:Landroid/view/View$OnClickListener;

.field private skipFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    .line 31
    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$1;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$2;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/PollEditorActivity;)Lcom/vkontakte/android/PollAttachment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateRemoveButtons()V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->done()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/PollEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/PollEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/PollEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget v0, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/PollEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollEditorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->initAnimation()V

    return-void
.end method

.method private addOptionRow(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f08012d

    const v4, 0x7f08012c

    const/4 v2, 0x0

    .line 152
    const v1, 0x7f030063

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "opt":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 158
    const v1, 0x7f080127

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/16 v4, 0xb

    if-ge v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 160
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "opt":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateButton()V

    .line 163
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateRemoveButtons()V

    .line 164
    return-void

    .line 158
    .restart local v0    # "opt":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private done()V
    .locals 14

    .prologue
    const v3, 0x7f080125

    const v2, 0x7f08012c

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    if-nez v0, :cond_2

    .line 205
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v10, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 208
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    .end local v13    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "question":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/api/PollsCreate;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "oid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {v1, v11, v10, v2, v0}, Lcom/vkontakte/android/api/PollsCreate;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$8;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PollsCreate;->setCallback(Lcom/vkontakte/android/api/PollsCreate$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 268
    .end local v10    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 209
    .end local v11    # "question":Ljava/lang/String;
    .restart local v10    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 229
    .end local v7    # "i":I
    .end local v10    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "v":Landroid/view/View;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v4, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v6, "edit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 234
    .restart local v13    # "v":Landroid/view/View;
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 243
    .end local v13    # "v":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/api/PollOption;

    .line 244
    .local v9, "o":Lcom/vkontakte/android/api/PollOption;
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 245
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 235
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "o":Lcom/vkontakte/android/api/PollOption;
    .restart local v13    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 236
    .local v12, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PollOption;

    iget-object v0, v0, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PollOption;

    iget v0, v0, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 240
    :cond_7
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 247
    .end local v12    # "txt":Ljava/lang/String;
    .end local v13    # "v":Landroid/view/View;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 248
    .restart local v11    # "question":Ljava/lang/String;
    new-instance v0, Lcom/vkontakte/android/api/PollsEdit;

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v1, v1, Lcom/vkontakte/android/PollAttachment;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v2, v2, Lcom/vkontakte/android/PollAttachment;->pid:I

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    :goto_5
    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/PollsEdit;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$9;

    invoke-direct {v1, p0, v11}, Lcom/vkontakte/android/PollEditorActivity$9;-><init>(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsEdit;->setCallback(Lcom/vkontakte/android/api/PollsEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_1

    :cond_9
    move-object v3, v11

    goto :goto_5
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 112
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 113
    .local v0, "lt":Landroid/animation/LayoutTransition;
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 114
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 115
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PollEditorActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PollEditorActivity$5;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollEditorActivity$6;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 149
    .end local v0    # "lt":Landroid/animation/LayoutTransition;
    :cond_0
    return-void
.end method

.method private loadPoll()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v1, v1, Lcom/vkontakte/android/PollAttachment;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v2, v2, Lcom/vkontakte/android/PollAttachment;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollEditorActivity$7;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 201
    return-void
.end method

.method private updateButton()V
    .locals 8

    .prologue
    const v7, 0x7f08012c

    const v6, 0x7f080022

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 271
    const v3, 0x7f080125

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v4

    .line 272
    .local v0, "disable":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 274
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 277
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    .line 279
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 284
    :goto_4
    return-void

    .end local v0    # "disable":Z
    .end local v1    # "i":I
    :cond_1
    move v0, v5

    .line 271
    goto :goto_0

    .line 275
    .restart local v0    # "disable":Z
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_5
    or-int/2addr v0, v3

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    .line 275
    goto :goto_5

    .end local v2    # "v":Landroid/view/View;
    :cond_4
    move v4, v5

    .line 277
    goto :goto_2

    .line 279
    :cond_5
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_3

    .line 281
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v4, v3, v5

    if-nez v0, :cond_7

    const/16 v3, 0xff

    :goto_6
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v0, :cond_8

    const/4 v4, -0x1

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 281
    :cond_7
    const/16 v3, 0x80

    goto :goto_6

    .line 282
    :cond_8
    const v4, -0x7f000001

    goto :goto_7
.end method

.method private updateRemoveButtons()V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 64
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030062

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->setContentView(I)V

    .line 67
    const v1, 0x7f080126

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    .line 69
    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    if-nez v2, :cond_0

    const v2, 0x7f0d00b3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/PollEditorActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PollEditorActivity$3;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const v1, 0x7f0d0203

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->setTitle(I)V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PollAttachment;

    iput-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    .line 81
    const v1, 0x7f080128

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const v1, 0x7f080129

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->loadPoll()V

    .line 91
    :goto_1
    const v1, 0x7f080127

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PollEditorActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PollEditorActivity$4;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f08012b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 99
    .local v0, "sw":Landroid/widget/Switch;
    const v1, 0x7f0d01d0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 100
    const v1, 0x7f0d01cb

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 107
    const v1, 0x7f080125

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    return-void

    .line 70
    .end local v0    # "sw":Landroid/widget/Switch;
    :cond_0
    const v2, 0x7f0d0275

    goto/16 :goto_0

    .line 85
    :cond_1
    const v1, 0x7f0d0202

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->setTitle(I)V

    .line 86
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    .line 87
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->initAnimation()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 287
    const v1, 0x7f0d028c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 288
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 289
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 290
    const/4 v1, 0x1

    return v1
.end method
