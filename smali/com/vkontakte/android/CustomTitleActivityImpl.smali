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
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 2
    .param p1, "t"    # Landroid/app/Activity;
    .param p2, "tResID"    # I
    .param p3, "inTab"    # Z

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f03004d

    iput v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    .line 25
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->wasPaused:Z

    .line 29
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    .line 38
    iput p2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    .line 39
    iput-boolean p3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    .line 40
    return-void
.end method

.method private beforeSetContentView()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInTab:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f060198

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const v1, 0x7f060195

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const v1, 0x7f060199

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public createContentView(I)Landroid/view/View;
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Landroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, -0x2

    const v8, 0x7f060197

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->beforeSetContentView()V

    .line 58
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    .line 59
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 63
    :cond_0
    iget-boolean v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    if-nez v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    iget v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleResID:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "titleBar":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setSelected(Z)V

    .line 69
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_tab_root"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "backBtn":Landroid/widget/ImageView;
    const v3, 0x7f0200bd

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v1, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 79
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    const v4, 0x7f060198

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    new-instance v3, Lcom/vkontakte/android/CustomTitleActivityImpl$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CustomTitleActivityImpl$1;-><init>(Lcom/vkontakte/android/CustomTitleActivityImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .end local v0    # "backBtn":Landroid/widget/ImageView;
    .end local v1    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "titleBar":Landroid/view/View;
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 94
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->contentView:Landroid/widget/LinearLayout;

    return-object v3
.end method

.method public initGlobal()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Z)V

    .line 165
    return-void
.end method

.method public initGlobal(Z)V
    .locals 6
    .param p1, "login"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    sget-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 171
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 172
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 175
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 177
    const-string v2, "sid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const-string v2, "uid"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 179
    const-string v2, "sid"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 180
    const-string v2, "secret"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 181
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    .line 189
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 183
    .restart local v0    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    const-class v5, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    sput-object v0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    .line 141
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;-><init>(Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    sput-object v0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 152
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->backgroundTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 154
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    if-eqz v0, :cond_1

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    .line 157
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->setNormalMode()V

    .line 159
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

    .line 160
    sget-boolean v0, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivityImpl;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 161
    :cond_2
    return-void
.end method
