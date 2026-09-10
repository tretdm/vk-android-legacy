.class public Lcom/vkontakte/android/CustomTitleActivityImpl;
.super Ljava/lang/Object;
.source "CustomTitleActivityImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;
    }
.end annotation


# static fields
.field private static backgroundTimer:Ljava/util/Timer;

.field public static isInBG:Z


# instance fields
.field act:Landroid/app/Activity;

.field public contentView:Landroid/widget/LinearLayout;

.field isInTab:Z

.field leftViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field rightViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public titleHidden:Z

.field titleResID:I

.field wasPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 2
    .param p1, "t"    # Landroid/app/Activity;
    .param p2, "tResID"    # I
    .param p3, "inTab"    # Z

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f030054

    iput v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    .line 28
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->wasPaused:Z

    .line 32
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    .line 41
    iput p2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    .line 42
    iput-boolean p3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    .line 45
    return-void
.end method

.method private beforeSetContentView()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static initGlobal(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "login"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 192
    sget-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v3, :cond_1

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 196
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 199
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 200
    const-string v3, "sid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    const-string v3, "uid"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 202
    const-string v3, "sid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 203
    const-string v3, "secret"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 204
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v3

    const-string v4, "vk_uid"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    :cond_0
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    .line 215
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 206
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string v3, "vk"

    const-string v4, "no session in prefs, need auth"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f060183

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const v1, 0x7f060180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const v1, 0x7f060184

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public createContentView(I)Landroid/view/View;
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Landroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x2

    const/4 v10, -0x1

    const v9, 0x7f060182

    const/4 v5, 0x1

    .line 64
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->beforeSetContentView()V

    .line 65
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    .line 66
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 70
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    if-nez v4, :cond_4

    .line 71
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    move v2, v5

    .line 72
    .local v2, "thin":Z
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    iget v7, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "titleBar":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_6

    const/16 v4, 0x20

    :goto_1
    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v7, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 77
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    const/16 v7, 0xf

    :goto_2
    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    instance-of v4, v4, Lcom/vkontakte/android/ChatActivity;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "_tab_root"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 82
    :cond_3
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "backBtn":Landroid/widget/ImageView;
    const v4, 0x7f0200bd

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v1, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 88
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    const v5, 0x7f060183

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 89
    new-instance v4, Lcom/vkontakte/android/CustomTitleActivityImpl$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CustomTitleActivityImpl$1;-><init>(Lcom/vkontakte/android/CustomTitleActivityImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .end local v0    # "backBtn":Landroid/widget/ImageView;
    .end local v1    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "thin":Z
    .end local v3    # "titleBar":Landroid/view/View;
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    return-object v4

    :cond_5
    move v2, v6

    .line 71
    goto/16 :goto_0

    .line 73
    .restart local v2    # "thin":Z
    .restart local v3    # "titleBar":Landroid/view/View;
    :cond_6
    const/16 v4, 0x30

    goto/16 :goto_1

    .line 78
    :cond_7
    const/16 v7, 0x13

    goto/16 :goto_2
.end method

.method public initGlobal()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Z)V

    .line 185
    return-void
.end method

.method public initGlobal(Z)V
    .locals 1
    .param p1, "login"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Landroid/content/Context;Z)V

    .line 189
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    sput-object v0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    .line 161
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;-><init>(Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    sput-object v0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 172
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 174
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    .line 177
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->setNormalMode()V

    .line 179
    :cond_1
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "last_activity"

    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    sget-boolean v0, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 181
    :cond_2
    return-void
.end method

.method public resizeTitle(Z)V
    .locals 5
    .param p1, "thin"    # Z

    .prologue
    const v4, 0x7f060182

    .line 107
    if-eqz p1, :cond_1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 108
    .local v0, "height":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const v3, 0x7f060180

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 110
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/16 v3, 0xf

    :goto_1
    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    :cond_0
    return-void

    .line 107
    .end local v0    # "height":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    goto :goto_0

    .line 112
    .restart local v0    # "height":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    const/16 v3, 0x13

    goto :goto_1
.end method
