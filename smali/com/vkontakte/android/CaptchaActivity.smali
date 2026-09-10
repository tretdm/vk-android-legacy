.class public Lcom/vkontakte/android/CaptchaActivity;
.super Landroid/app/Activity;
.source "CaptchaActivity.java"


# static fields
.field public static isReady:Z

.field public static lastKey:Ljava/lang/String;


# instance fields
.field private image:Landroid/widget/ImageView;

.field private input:Landroid/widget/EditText;

.field private progress:Landroid/widget/ProgressBar;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CaptchaActivity;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/vkontakte/android/CaptchaActivity;->captchaDone()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/CaptchaActivity;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/CaptchaActivity;->captchaCanceled()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/CaptchaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/CaptchaActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CaptchaActivity;->displayImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private captchaCanceled()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 132
    invoke-virtual {p0}, Lcom/vkontakte/android/CaptchaActivity;->finish()V

    .line 133
    return-void
.end method

.method private captchaDone()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 126
    invoke-virtual {p0}, Lcom/vkontakte/android/CaptchaActivity;->finish()V

    .line 127
    return-void
.end method

.method private displayImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    new-instance v0, Lcom/vkontakte/android/CaptchaActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/CaptchaActivity$6;-><init>(Lcom/vkontakte/android/CaptchaActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CaptchaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private loadImage()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CaptchaActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CaptchaActivity$5;-><init>(Lcom/vkontakte/android/CaptchaActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/vkontakte/android/CaptchaActivity;->overridePendingTransition(II)V

    .line 33
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/CaptchaActivity;->setContentView(Landroid/view/View;)V

    .line 35
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v6, "layout":Landroid/widget/LinearLayout;
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    .line 37
    .local v7, "padding":I
    const/high16 v9, 0x43020000    # 130.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 38
    .local v2, "imageWidth":I
    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 39
    .local v1, "imageHeight":I
    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 40
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v3, "imgFrame":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "flParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 46
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-direct {v9, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->progress:Landroid/widget/ProgressBar;

    .line 49
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v8, "pbParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x11

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v8}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->image:Landroid/widget/ImageView;

    .line 55
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v5, "ivParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x11

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    .line 63
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    const/16 v10, 0xb0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 65
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v4, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v4, "inParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/CaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->url:Ljava/lang/String;

    .line 70
    const/4 v9, 0x0

    sput-boolean v9, Lcom/vkontakte/android/CaptchaActivity;->isReady:Z

    .line 71
    new-instance v9, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v9, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 73
    const v10, 0x7f060013

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 74
    const v10, 0x7f060028

    new-instance v11, Lcom/vkontakte/android/CaptchaActivity$1;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/CaptchaActivity$1;-><init>(Lcom/vkontakte/android/CaptchaActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 80
    const v10, 0x7f060027

    new-instance v11, Lcom/vkontakte/android/CaptchaActivity$2;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/CaptchaActivity$2;-><init>(Lcom/vkontakte/android/CaptchaActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 86
    new-instance v10, Lcom/vkontakte/android/CaptchaActivity$3;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/CaptchaActivity$3;-><init>(Lcom/vkontakte/android/CaptchaActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    invoke-direct {p0}, Lcom/vkontakte/android/CaptchaActivity;->loadImage()V

    .line 95
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 96
    iget-object v9, p0, Lcom/vkontakte/android/CaptchaActivity;->input:Landroid/widget/EditText;

    new-instance v10, Lcom/vkontakte/android/CaptchaActivity$4;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/CaptchaActivity$4;-><init>(Lcom/vkontakte/android/CaptchaActivity;)V

    .line 101
    const-wide/16 v11, 0x1f4

    .line 96
    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
