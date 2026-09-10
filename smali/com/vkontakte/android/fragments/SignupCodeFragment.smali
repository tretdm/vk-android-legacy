.class public Lcom/vkontakte/android/fragments/SignupCodeFragment;
.super Landroid/app/Fragment;
.source "SignupCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;,
        Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;
    }
.end annotation


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private initTime:J

.field private listener:Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

.field private phoneNumber:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Lcom/vkontakte/android/fragments/SignupCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$1;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/SignupCodeFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->initTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->listener:Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v1, 0x7f080179

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
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v1, "init_time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->initTime:J

    .line 67
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void

    .line 65
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->initTime:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f080179

    .line 88
    const v1, 0x7f030077

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080176

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 95
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 96
    .local v0, "trans":Landroid/animation/LayoutTransition;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 100
    .end local v0    # "trans":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f08017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;Lcom/vkontakte/android/fragments/SignupCodeFragment$1;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080175

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$2;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$3;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$4;-><init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 75
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    .line 146
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->phoneNumber:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOnNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method public setOnResendListener(Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment;->listener:Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;

    .line 150
    return-void
.end method
