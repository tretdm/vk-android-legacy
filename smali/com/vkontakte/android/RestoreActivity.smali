.class public Lcom/vkontakte/android/RestoreActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "RestoreActivity.java"


# static fields
.field private static final titles:[I


# instance fields
.field private code:Ljava/lang/String;

.field private codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

.field private curStep:I

.field private number:Ljava/lang/String;

.field private passHash:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

.field private phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

.field private progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private restoreDone:Z

.field private sid:Ljava/lang/String;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/RestoreActivity;->titles:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00ea
        0x7f0d02e7
        0x7f0d026f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 25
    iput v0, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    .line 35
    iput-boolean v0, p0, Lcom/vkontakte/android/RestoreActivity;->restoreDone:Z

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupPasswordFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity;->number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkontakte/android/RestoreActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/RestoreActivity;->completeRestore()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/RestoreActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity;->passHash:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/vkontakte/android/RestoreActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/vkontakte/android/RestoreActivity;->restoreDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/RestoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->sid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity;->sid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/RestoreActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkontakte/android/RestoreActivity;->setStep(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/RestoreActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/RestoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/ui/ActionBarProgressDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/RestoreActivity;)Lcom/vkontakte/android/fragments/SignupCodeFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkontakte/android/RestoreActivity;->verifyCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/RestoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method private completeRestore()V
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/vkontakte/android/api/AccountChangePassword;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/AccountChangePassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/RestoreActivity$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/RestoreActivity$10;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountChangePassword;->setCallback(Lcom/vkontakte/android/api/AccountChangePassword$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 293
    return-void
.end method

.method private requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "voice"    # Z
    .param p3, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 160
    new-instance v0, Lcom/vkontakte/android/api/AuthRestore;

    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->number:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/vkontakte/android/api/AuthRestore;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vkontakte/android/RestoreActivity$8;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/RestoreActivity$8;-><init>(Lcom/vkontakte/android/RestoreActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthRestore;->setCallback(Lcom/vkontakte/android/api/AuthRestore$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 200
    return-void
.end method

.method private setStep(I)V
    .locals 8
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    const v7, 0x7f080014

    .line 102
    iget v3, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    if-le p1, v3, :cond_5

    move v0, v2

    .line 103
    .local v0, "animateForward":Z
    :goto_0
    iput p1, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    .line 104
    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/vkontakte/android/RestoreActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/RestoreActivity$4;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    sget-object v3, Lcom/vkontakte/android/RestoreActivity;->titles:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/RestoreActivity;->setTitle(I)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 110
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1, v7, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    if-ne p1, v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    if-nez v2, :cond_1

    .line 114
    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SignupCodeFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    new-instance v3, Lcom/vkontakte/android/RestoreActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RestoreActivity$5;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setOnResendListener(Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;)V

    .line 121
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    new-instance v3, Lcom/vkontakte/android/RestoreActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RestoreActivity$6;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    iget-object v3, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setNumber(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 130
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-virtual {v1, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 132
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    if-nez v2, :cond_3

    .line 134
    new-instance v2, Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    new-instance v3, Lcom/vkontakte/android/RestoreActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RestoreActivity$7;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    const v3, 0x7f0d026e

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->setExplainText(Ljava/lang/String;)V

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 154
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-virtual {v1, v7, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 156
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_4
    return-void

    .line 102
    .end local v0    # "animateForward":Z
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return-void
.end method

.method private verifyCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/RestoreActivity;->sid:Ljava/lang/String;

    new-instance v1, Lcom/vkontakte/android/RestoreActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/RestoreActivity$9;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-static {v0, p1, v1}, Lcom/vkontakte/android/Auth;->authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onBackPressed()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/RestoreActivity;->curStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/RestoreActivity;->setStep(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f080014

    .line 38
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 41
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0d0156

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Lcom/vkontakte/android/RestoreActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/RestoreActivity$1;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    iput-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/RestoreActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 54
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 58
    new-instance v1, Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    new-instance v2, Lcom/vkontakte/android/RestoreActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/RestoreActivity$2;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/RestoreActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/RestoreActivity$3;-><init>(Lcom/vkontakte/android/RestoreActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/RestoreActivity;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 81
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    const v2, 0x7f0d0372

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setButtonText(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    const v2, 0x7f0d0270

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setExplainText(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setShowForgitButton(Z)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 94
    iget-boolean v0, p0, Lcom/vkontakte/android/RestoreActivity;->restoreDone:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/Global;->uid:I

    .line 96
    sput-object v1, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 97
    sput-object v1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method
