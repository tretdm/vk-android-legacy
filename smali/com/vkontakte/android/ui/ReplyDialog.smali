.class public Lcom/vkontakte/android/ui/ReplyDialog;
.super Landroid/app/Dialog;
.source "ReplyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ReplyDialog$Listener;,
        Lcom/vkontakte/android/ui/ReplyDialog$XEditText;
    }
.end annotation


# instance fields
.field private edit:Landroid/widget/EditText;

.field private listener:Lcom/vkontakte/android/ui/ReplyDialog$Listener;

.field private name:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "photo"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/vkontakte/android/ui/ReplyDialog;->text:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/vkontakte/android/ui/ReplyDialog;->name:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/vkontakte/android/ui/ReplyDialog;->photo:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 40
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/ReplyDialog;)Lcom/vkontakte/android/ui/ReplyDialog$Listener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog;->listener:Lcom/vkontakte/android/ui/ReplyDialog$Listener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/ReplyDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const v9, 0x7f060062

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x40e00000    # 7.0f

    const/4 v6, -0x1

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    .local v0, "cv":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/vkontakte/android/ui/ReplyDialog$XEditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/ReplyDialog$XEditText;-><init>(Lcom/vkontakte/android/ui/ReplyDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 54
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ReplyDialog;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ReplyDialog;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 62
    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/ReplyDialog$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/ReplyDialog$1;-><init>(Lcom/vkontakte/android/ui/ReplyDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f060120

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/ReplyDialog$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/ReplyDialog$2;-><init>(Lcom/vkontakte/android/ui/ReplyDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013f

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ReplyDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ReplyDialog;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    new-instance v2, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v2}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 113
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReplyDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020247

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    new-instance v2, Lcom/vkontakte/android/ui/ReplyDialog$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/ReplyDialog$3;-><init>(Lcom/vkontakte/android/ui/ReplyDialog;)V

    .line 125
    const-wide/16 v3, 0x64

    .line 121
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReplyDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/vkontakte/android/ui/ReplyDialog$Listener;)Landroid/app/Dialog;
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/ReplyDialog$Listener;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReplyDialog;->listener:Lcom/vkontakte/android/ui/ReplyDialog$Listener;

    .line 131
    return-object p0
.end method
