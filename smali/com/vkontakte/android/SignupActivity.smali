.class public Lcom/vkontakte/android/SignupActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "SignupActivity.java"

# interfaces
.implements Lcom/vkontakte/android/Auth$AuthResultReceiver;


# static fields
.field private static final RESTORE_RESULT:I = 0xcb

.field private static final VALIDATION_RESULT:I = 0xca

.field private static final titles:[I


# instance fields
.field private code:Ljava/lang/String;

.field private codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

.field private curStep:I

.field private firstName:Ljava/lang/String;

.field private gender:I

.field private lastName:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

.field private phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

.field private photo:Ljava/lang/String;

.field private profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

.field private progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sid:Ljava/lang/String;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/SignupActivity;->titles:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080126
        0x7f080282
        0x7f080283
        0x7f080284
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupProfileFragment;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->firstName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->number:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->sid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/SignupActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupCodeFragment;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SignupActivity;->verifyCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupPasswordFragment;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->password:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/SignupActivity;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/vkontakte/android/SignupActivity;->completeSignup()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->sid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->lastName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/SignupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->code:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/SignupActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SignupActivity;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SignupActivity;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/vkontakte/android/SignupActivity;->gender:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/SignupActivity;->photo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/SignupActivity;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SignupActivity;->setStep(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SignupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/ui/ActionBarProgressDrawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/SignupActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/SignupActivity;)Lcom/vkontakte/android/fragments/SignupPhoneFragment;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    return-object v0
.end method

.method private completeSignup()V
    .locals 4

    .prologue
    .line 244
    new-instance v0, Lcom/vkontakte/android/api/AuthConfirm;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/SignupActivity;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/AuthConfirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/vkontakte/android/SignupActivity$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SignupActivity$10;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->setCallback(Lcom/vkontakte/android/api/AuthConfirm$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 275
    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    return-void
.end method

.method private requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "voice"    # Z
    .param p3, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 166
    new-instance v0, Lcom/vkontakte/android/api/AuthSignup;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->firstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->lastName:Ljava/lang/String;

    iget v3, p0, Lcom/vkontakte/android/SignupActivity;->gender:I

    iget-object v4, p0, Lcom/vkontakte/android/SignupActivity;->number:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/AuthSignup;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 167
    new-instance v1, Lcom/vkontakte/android/SignupActivity$8;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/SignupActivity$8;-><init>(Lcom/vkontakte/android/SignupActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthSignup;->setCallback(Lcom/vkontakte/android/api/AuthSignup$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 213
    return-void
.end method

.method private setStep(I)V
    .locals 8
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    const v7, 0x7f09001b

    .line 90
    iget v3, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    if-le p1, v3, :cond_7

    move v0, v2

    .line 91
    .local v0, "animateForward":Z
    :goto_0
    iput p1, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/vkontakte/android/SignupActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SignupActivity$3;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    .line 94
    const-wide/16 v5, 0x64

    .line 92
    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    sget-object v3, Lcom/vkontakte/android/SignupActivity;->titles:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SignupActivity;->setTitle(I)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 98
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/vkontakte/android/SignupActivity;->profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v1, v7, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 100
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    if-ne p1, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    .line 103
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    new-instance v3, Lcom/vkontakte/android/SignupActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SignupActivity$4;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 117
    .restart local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    if-nez v2, :cond_3

    .line 121
    new-instance v2, Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SignupCodeFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    new-instance v3, Lcom/vkontakte/android/SignupActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SignupActivity$5;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setOnResendListener(Lcom/vkontakte/android/fragments/SignupCodeFragment$OnResendListener;)V

    .line 128
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    new-instance v3, Lcom/vkontakte/android/SignupActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SignupActivity$6;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    iget-object v3, p0, Lcom/vkontakte/android/SignupActivity;->phoneFragment:Lcom/vkontakte/android/fragments/SignupPhoneFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->setNumber(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 137
    .restart local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->codeFragment:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-virtual {v1, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    if-nez v2, :cond_5

    .line 141
    new-instance v2, Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/SignupActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    .line 142
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    new-instance v3, Lcom/vkontakte/android/SignupActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SignupActivity$7;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/SignupPasswordFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 160
    .restart local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->passwordFragment:Lcom/vkontakte/android/fragments/SignupPasswordFragment;

    invoke-virtual {v1, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 162
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_6
    return-void

    .line 90
    .end local v0    # "animateForward":Z
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 283
    return-void
.end method

.method private verifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/AuthConfirm;

    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->number:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/vkontakte/android/api/AuthConfirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/vkontakte/android/SignupActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SignupActivity$9;-><init>(Lcom/vkontakte/android/SignupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->setCallback(Lcom/vkontakte/android/api/AuthConfirm$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method


# virtual methods
.method public authDone(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v1, :cond_1

    .line 295
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SignupActivity;->setResult(I)V

    .line 296
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->finish()V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->photo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SignupActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v1, Lcom/vkontakte/android/SignupActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SignupActivity$11;-><init>(Lcom/vkontakte/android/SignupActivity;I)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/VKFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 338
    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SignupActivity$12;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/SignupActivity$12;-><init>(Lcom/vkontakte/android/SignupActivity;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 345
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    :cond_0
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 348
    sget v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/SignupActivity;->authDone(ILjava/util/HashMap;)V

    .line 350
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    if-nez v0, :cond_0

    .line 287
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onBackPressed()V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/SignupActivity;->curStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SignupActivity;->setStep(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f09001b

    .line 43
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 46
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v1, Lcom/vkontakte/android/SignupActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SignupActivity$1;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    iput-object v1, p0, Lcom/vkontakte/android/SignupActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SignupActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 59
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 63
    new-instance v1, Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/SignupActivity;->profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    new-instance v2, Lcom/vkontakte/android/SignupActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SignupActivity$2;-><init>(Lcom/vkontakte/android/SignupActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SignupActivity;->setContentView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 82
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkontakte/android/SignupActivity;->profileFragment:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 87
    return-void
.end method
