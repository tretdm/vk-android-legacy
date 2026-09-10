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
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$1;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 45
    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$2;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PollEditorActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PollEditorActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PollEditorActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->initAnimation()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PollEditorActivity;)Lcom/vkontakte/android/PollAttachment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateButton()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateRemoveButtons()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PollEditorActivity;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->done()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PollEditorActivity;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PollEditorActivity;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vkontakte/android/PollEditorActivity;->skipFrame:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PollEditorActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PollEditorActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/vkontakte/android/PollEditorActivity;->prevHeight:I

    return-void
.end method

.method private addOptionRow(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f09014c

    const v4, 0x7f09014b

    const/4 v2, 0x0

    .line 153
    const v1, 0x7f030071

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
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

    .line 155
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 159
    const v1, 0x7f090146

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

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 161
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "opt":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateButton()V

    .line 164
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->updateRemoveButtons()V

    .line 165
    return-void

    .line 159
    .restart local v0    # "opt":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private done()V
    .locals 13

    .prologue
    const v3, 0x7f090144

    const v2, 0x7f09014b

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    if-nez v0, :cond_2

    .line 206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v9, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, "question":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/api/PollsCreate;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "oid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/ankri/views/Switch;

    invoke-virtual {v0}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v0

    invoke-direct {v1, v10, v9, v2, v0}, Lcom/vkontakte/android/api/PollsCreate;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    .line 214
    new-instance v0, Lcom/vkontakte/android/PollEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PollEditorActivity$8;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PollsCreate;->setCallback(Lcom/vkontakte/android/api/PollsCreate$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 269
    .end local v9    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 208
    .end local v10    # "question":Ljava/lang/String;
    .restart local v9    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 209
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 230
    .end local v7    # "i":I
    .end local v9    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "v":Landroid/view/View;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v4, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v6, "edit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v7, v0, :cond_5

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->origEditOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 248
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 249
    .restart local v10    # "question":Ljava/lang/String;
    new-instance v0, Lcom/vkontakte/android/api/PollsEdit;

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v1, v1, Lcom/vkontakte/android/PollAttachment;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v2, v2, Lcom/vkontakte/android/PollAttachment;->pid:I

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    :goto_4
    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/PollsEdit;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 250
    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$9;

    invoke-direct {v1, p0, v10}, Lcom/vkontakte/android/PollEditorActivity$9;-><init>(Lcom/vkontakte/android/PollEditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsEdit;->setCallback(Lcom/vkontakte/android/api/PollsEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 234
    .end local v10    # "question":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 235
    .restart local v12    # "v":Landroid/view/View;
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PollOption;

    iget-object v0, v0, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PollOption;

    iget v0, v0, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 241
    :cond_7
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 244
    .end local v11    # "txt":Ljava/lang/String;
    .end local v12    # "v":Landroid/view/View;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/PollOption;

    .line 245
    .local v8, "o":Lcom/vkontakte/android/api/PollOption;
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->editOptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 246
    iget v1, v8, Lcom/vkontakte/android/api/PollOption;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v8    # "o":Lcom/vkontakte/android/api/PollOption;
    .restart local v10    # "question":Ljava/lang/String;
    :cond_9
    move-object v3, v10

    .line 249
    goto/16 :goto_4
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 113
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 114
    .local v0, "lt":Landroid/animation/LayoutTransition;
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 115
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 116
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/PollEditorActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PollEditorActivity$5;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollEditorActivity$6;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 150
    .end local v0    # "lt":Landroid/animation/LayoutTransition;
    :cond_0
    return-void
.end method

.method private loadPoll()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v1, v1, Lcom/vkontakte/android/PollAttachment;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    iget v2, v2, Lcom/vkontakte/android/PollAttachment;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    .line 175
    new-instance v1, Lcom/vkontakte/android/PollEditorActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollEditorActivity$7;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 202
    return-void
.end method

.method private updateButton()V
    .locals 8

    .prologue
    const v7, 0x7f09014b

    const v6, 0x7f09002b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 272
    const v3, 0x7f090144

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v4

    .line 273
    .local v0, "disable":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    .line 280
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 285
    :goto_3
    return-void

    .end local v0    # "disable":Z
    .end local v1    # "i":I
    :cond_2
    move v0, v5

    .line 272
    goto :goto_0

    .line 274
    .restart local v0    # "disable":Z
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_4
    or-int/2addr v0, v3

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    .line 276
    goto :goto_4

    .line 280
    .end local v2    # "v":Landroid/view/View;
    :cond_5
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_2

    .line 282
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

    :goto_5
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 283
    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v0, :cond_8

    const/4 v4, -0x1

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 282
    :cond_7
    const/16 v3, 0x80

    goto :goto_5

    .line 283
    :cond_8
    const v4, -0x7f000001

    goto :goto_6
.end method

.method private updateRemoveButtons()V
    .locals 4

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 171
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v2, 0x7f030070

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->setContentView(I)V

    .line 68
    const v2, 0x7f090145

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->options:Landroid/view/ViewGroup;

    .line 70
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    if-nez v3, :cond_0

    const v3, 0x7f080252

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/PollEditorActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PollEditorActivity$3;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "poll"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const v2, 0x7f08030e

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "poll"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PollAttachment;

    iput-object v2, p0, Lcom/vkontakte/android/PollEditorActivity;->poll:Lcom/vkontakte/android/PollAttachment;

    .line 82
    const v2, 0x7f090147

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->loadPoll()V

    .line 92
    :goto_1
    const v2, 0x7f090146

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/PollEditorActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PollEditorActivity$4;-><init>(Lcom/vkontakte/android/PollEditorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f09014a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/ankri/views/Switch;

    .line 100
    .local v1, "sw":Lde/ankri/views/Switch;
    const v2, 0x7f0801f3

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/ankri/views/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f0801f4

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/ankri/views/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, v5}, Lde/ankri/views/Switch;->setTextColor(I)V

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/ankri/views/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/PollEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/ankri/views/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v6, [[I

    new-array v3, v4, [I

    aput-object v3, v2, v4

    new-array v3, v6, [I

    aput v5, v3, v4

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 106
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1, v0}, Lde/ankri/views/Switch;->setSwitchTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    const v2, 0x7f090144

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/PollEditorActivity;->changeListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    return-void

    .line 71
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v1    # "sw":Lde/ankri/views/Switch;
    :cond_0
    const v3, 0x7f0800a0

    goto/16 :goto_0

    .line 86
    :cond_1
    const v2, 0x7f08030d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->setTitle(I)V

    .line 87
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    .line 88
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/vkontakte/android/PollEditorActivity;->addOptionRow(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/vkontakte/android/PollEditorActivity;->initAnimation()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 288
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 289
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/PollEditorActivity;->okBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 290
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 291
    const/4 v1, 0x1

    return v1
.end method
