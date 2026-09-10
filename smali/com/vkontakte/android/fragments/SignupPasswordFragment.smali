.class public Lcom/vkontakte/android/fragments/SignupPasswordFragment;
.super Landroid/app/Fragment;
.source "SignupPasswordFragment.java"


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private explainText:Ljava/lang/String;

.field private initTime:J

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/SignupPasswordFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    const-string v0, "init_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->initTime:J

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->initTime:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f08017c

    const v2, 0x7f08017b

    .line 40
    const v0, 0x7f030078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SignupPasswordFragment$1;-><init>(Lcom/vkontakte/android/fragments/SignupPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    .line 75
    return-void
.end method

.method public setExplainText(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->explainText:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->view:Landroid/view/View;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method
