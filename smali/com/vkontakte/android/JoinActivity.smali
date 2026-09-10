.class public Lcom/vkontakte/android/JoinActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "JoinActivity.java"


# instance fields
.field private backConsumed:Z

.field private checkPhoneReq:Lcom/vkontakte/android/APIRequest;

.field private firstNameInput:Landroid/widget/EditText;

.field private flipper:Landroid/widget/ViewFlipper;

.field private genderFBtn:Landroid/widget/ViewFlipper;

.field private genderMBtn:Landroid/widget/ViewFlipper;

.field private lastNameInput:Landroid/widget/EditText;

.field private lastVoiceConfirm:Z

.field private login:Ljava/lang/String;

.field private passInput:Landroid/widget/EditText;

.field private phoneInput:Landroid/widget/EditText;

.field private selectedGender:I

.field private smsCodeInput:Landroid/widget/EditText;

.field private validateCanceled:Z

.field private validateProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->backConsumed:Z

    .line 30
    iput v0, p0, Lcom/vkontakte/android/JoinActivity;->selectedGender:I

    .line 32
    iput-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->validateCanceled:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->lastVoiceConfirm:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->firstNameInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->lastNameInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->genderFBtn:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/JoinActivity;I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/vkontakte/android/JoinActivity;->selectedGender:I

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/JoinActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity;->checkPhoneReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/JoinActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity;->login:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->smsCodeInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/JoinActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/JoinActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/JoinActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->validateCanceled:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/vkontakte/android/JoinActivity;->retryLater()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/JoinActivity;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/vkontakte/android/JoinActivity;->validateCanceled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/JoinActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/vkontakte/android/JoinActivity;->selectedGender:I

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/JoinActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->lastVoiceConfirm:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/JoinActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->login:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->phoneInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->passInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/JoinActivity;ZZ)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/JoinActivity;->sendSignupForm(ZZ)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/vkontakte/android/JoinActivity;->confirmSMS()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/JoinActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/vkontakte/android/JoinActivity;->checkPhone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->genderMBtn:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 338
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 339
    :goto_1
    return v1

    .line 338
    :cond_0
    aget-object v0, p1, v2

    .local v0, "ae":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkPhone(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->checkPhoneReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->checkPhoneReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 188
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/AuthCheckPhone;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/AuthCheckPhone;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/JoinActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/JoinActivity$9;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthCheckPhone;->setCallback(Lcom/vkontakte/android/api/AuthCheckPhone$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/JoinActivity;->checkPhoneReq:Lcom/vkontakte/android/APIRequest;

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->checkPhoneReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 200
    return-void
.end method

.method private confirmSMS()V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lcom/vkontakte/android/api/AuthConfirm;

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->phoneInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->smsCodeInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/JoinActivity;->passInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/AuthConfirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Lcom/vkontakte/android/JoinActivity$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/JoinActivity$13;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->setCallback(Lcom/vkontakte/android/api/AuthConfirm$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 333
    const v1, 0x7f090001

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;IZ)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 335
    return-void
.end method

.method private retryLater()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 277
    iput-boolean v3, p0, Lcom/vkontakte/android/JoinActivity;->validateCanceled:Z

    .line 278
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090164

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/vkontakte/android/JoinActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/JoinActivity$11;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/vkontakte/android/JoinActivity$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/JoinActivity$12;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    .line 294
    const-wide/16 v2, 0x1388

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity;->validateProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method private sendSignupForm(ZZ)V
    .locals 7
    .param p1, "voiceConfirm"    # Z
    .param p2, "retry"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/vkontakte/android/JoinActivity;->lastVoiceConfirm:Z

    .line 221
    new-instance v0, Lcom/vkontakte/android/api/AuthSignup;

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->firstNameInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->lastNameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/JoinActivity;->selectedGender:I

    iget-object v4, p0, Lcom/vkontakte/android/JoinActivity;->phoneInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/AuthSignup;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 222
    new-instance v1, Lcom/vkontakte/android/JoinActivity$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/JoinActivity$10;-><init>(Lcom/vkontakte/android/JoinActivity;ZZ)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->setCallback(Lcom/vkontakte/android/api/AuthSignup$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 271
    .local v6, "req":Lcom/vkontakte/android/APIRequest;
    if-nez p2, :cond_0

    const v0, 0x7f090001

    const/4 v1, 0x0

    invoke-virtual {v6, p0, v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;IZ)Lcom/vkontakte/android/APIRequest;

    .line 272
    :cond_0
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 273
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/JoinActivity;->hideTitle()V

    .line 38
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->setContentView(I)V

    .line 47
    const v2, 0x7f060086

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/JoinActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$1;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f06008c

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/JoinActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$2;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f060096

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/JoinActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$3;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v2, 0x7f060097

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/JoinActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$4;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f060093

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/JoinActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$5;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v2, 0x7f060084

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->genderMBtn:Landroid/widget/ViewFlipper;

    .line 108
    const v2, 0x7f060085

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->genderFBtn:Landroid/widget/ViewFlipper;

    .line 109
    const v2, 0x7f060081

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->firstNameInput:Landroid/widget/EditText;

    .line 110
    const v2, 0x7f060082

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->lastNameInput:Landroid/widget/EditText;

    .line 111
    const v2, 0x7f06008a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->phoneInput:Landroid/widget/EditText;

    .line 112
    const v2, 0x7f06008b

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->passInput:Landroid/widget/EditText;

    .line 113
    const v2, 0x7f06007f

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 116
    const v2, 0x7f060092

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/JoinActivity;->smsCodeInput:Landroid/widget/EditText;

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->passInput:Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/JoinActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$6;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->genderMBtn:Landroid/widget/ViewFlipper;

    new-instance v3, Lcom/vkontakte/android/JoinActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$7;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->genderFBtn:Landroid/widget/ViewFlipper;

    new-instance v3, Lcom/vkontakte/android/JoinActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/JoinActivity$8;-><init>(Lcom/vkontakte/android/JoinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/JoinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 182
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/JoinActivity;->phoneInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 344
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f040006

    invoke-virtual {v1, p0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    const v2, 0x7f040008

    invoke-virtual {v1, p0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 348
    iput-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->backConsumed:Z

    .line 351
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/CustomTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 356
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->backConsumed:Z

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/JoinActivity;->backConsumed:Z

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/CustomTitleActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
