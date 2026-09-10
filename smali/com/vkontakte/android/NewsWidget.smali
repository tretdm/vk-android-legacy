.class public Lcom/vkontakte/android/NewsWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "NewsWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsWidget$CacheOpenHelper;
    }
.end annotation


# static fields
.field public static final ACTION_INFO_CLICK:Ljava/lang/String; = "InfoClick"

.field public static final ACTION_NEXT_POST:Ljava/lang/String; = "NextPost"

.field public static final ACTION_OPEN_POST:Ljava/lang/String; = "OpenPost"

.field public static final ACTION_PREV_POST:Ljava/lang/String; = "PrevPost"

.field public static final ACTION_REFRESH:Ljava/lang/String; = "Refresh"

.field public static final ACTION_SHOW_ERROR:Ljava/lang/String; = "ShowError"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "Update"

.field private static entries:[Lcom/vkontakte/android/NewsEntry;

.field private static forceUpdate:Z

.field private static loggedIn:Z

.field private static openAppOnInfoClick:Z

.field private static position:I

.field private static views:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    sput v1, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 43
    new-array v0, v1, [Lcom/vkontakte/android/NewsEntry;

    sput-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    .line 45
    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->openAppOnInfoClick:Z

    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->forceUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->doUpdate(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 32
    sput p0, Lcom/vkontakte/android/NewsWidget;->position:I

    return-void
.end method

.method static synthetic access$2([Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private doUpdate(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 422
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "awm":Landroid/appwidget/AppWidgetManager;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAttachmentsText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 467
    const/4 v4, 0x0

    .local v4, "photoCount":I
    const/4 v5, 0x0

    .local v5, "videoCount":I
    const/4 v1, 0x0

    .local v1, "audioCount":I
    const/4 v2, 0x0

    .line 468
    .local v2, "documentCount":I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 469
    .local v3, "lines":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 479
    if-lez v2, :cond_1

    .line 480
    if-ne v2, v10, :cond_d

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 483
    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 484
    if-ne v1, v10, :cond_e

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 487
    :cond_2
    :goto_2
    if-lez v5, :cond_3

    .line 488
    if-ne v5, v10, :cond_f

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 491
    :cond_3
    :goto_3
    if-lez v4, :cond_4

    .line 492
    if-ne v4, v10, :cond_10

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 495
    :cond_4
    :goto_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#2B587A\'>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<br/>"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 496
    :goto_5
    return-object v6

    .line 469
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 470
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 471
    :cond_6
    instance-of v6, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 472
    :cond_7
    instance-of v6, v0, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v6, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 473
    :cond_8
    instance-of v6, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v6, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 474
    :cond_9
    instance-of v6, v0, Lcom/vkontakte/android/LinkAttachment;

    if-eqz v6, :cond_a

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/LinkAttachment;

    iget-object v6, v6, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_a
    instance-of v6, v0, Lcom/vkontakte/android/PollAttachment;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Lcom/vkontakte/android/PollAttachment;

    iget-object v6, v6, Lcom/vkontakte/android/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_b
    instance-of v6, v0, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v6, :cond_c

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f09010a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_c
    instance-of v6, v0, Lcom/vkontakte/android/NoteAttachment;

    if-eqz v6, :cond_0

    check-cast v0, Lcom/vkontakte/android/NoteAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v6, v0, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 481
    :cond_d
    const v6, 0x7f0a001c

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 485
    :cond_e
    const v6, 0x7f0a001a

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 489
    :cond_f
    const v6, 0x7f0a001b

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 493
    :cond_10
    const v6, 0x7f0a0019

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 496
    :cond_11
    const-string v6, ""

    goto/16 :goto_5
.end method

.method private initInfoViews(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03004f

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    .line 137
    sget-boolean v10, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v10, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 139
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "sid"

    invoke-interface {v7, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 140
    const-string v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/vkontakte/android/Global;->uid:I

    .line 141
    const-string v10, "sid"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 142
    const-string v10, "secret"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 143
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v10

    const-string v11, "vk_uid"

    new-instance v12, Ljava/lang/StringBuilder;

    sget v13, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vkontakte/android/Global;->inited:Z

    .line 145
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sput-object v10, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 151
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    const-string v10, "window"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 153
    iget v10, v4, Landroid/util/DisplayMetrics;->density:F

    sput v10, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 156
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-class v10, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v8, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v8, "refreshIntent":Landroid/content/Intent;
    const-string v10, "Refresh"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 159
    .local v9, "refreshPending":Landroid/app/PendingIntent;
    sget-object v10, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v11, 0x7f060173

    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v5, "newPostIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 164
    .local v6, "newPostPending":Landroid/app/PendingIntent;
    sget-object v10, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v11, 0x7f060168

    invoke-virtual {v10, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "appIntent":Landroid/content/Intent;
    const/high16 v10, 0x18000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 169
    .local v1, "appPending":Landroid/app/PendingIntent;
    sget-object v10, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v11, 0x7f060167

    invoke-virtual {v10, v11, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v2, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v2, "infoIntent":Landroid/content/Intent;
    const-string v10, "InfoClick"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 174
    .local v3, "infoPending":Landroid/app/PendingIntent;
    sget-object v10, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v11, 0x7f060175

    invoke-virtual {v10, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    return-void

    .line 147
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v1    # "appPending":Landroid/app/PendingIntent;
    .end local v2    # "infoIntent":Landroid/content/Intent;
    .end local v3    # "infoPending":Landroid/app/PendingIntent;
    .end local v5    # "newPostIntent":Landroid/content/Intent;
    .end local v6    # "newPostPending":Landroid/app/PendingIntent;
    .end local v8    # "refreshIntent":Landroid/content/Intent;
    .end local v9    # "refreshPending":Landroid/app/PendingIntent;
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const/4 v10, 0x0

    sput-boolean v10, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto/16 :goto_0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f03004e

    invoke-direct/range {v17 .. v19}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    .line 85
    sget-boolean v17, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v17, :cond_0

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 87
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v17, "sid"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 88
    const-string v17, "uid"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/vkontakte/android/Global;->uid:I

    .line 89
    const-string v17, "sid"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 90
    const-string v17, "secret"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 91
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v17

    const-string v18, "vk_uid"

    new-instance v19, Ljava/lang/StringBuilder;

    sget v20, Lcom/vkontakte/android/Global;->uid:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const/16 v17, 0x1

    sput-boolean v17, Lcom/vkontakte/android/Global;->inited:Z

    .line 93
    const/16 v17, 0x1

    sput-boolean v17, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    .line 98
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sput-object v17, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 99
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    const-string v17, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    sput v17, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 104
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/NewsWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v8, "nextIntent":Landroid/content/Intent;
    const-string v17, "NextPost"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 107
    .local v9, "nextPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f060172

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    new-instance v13, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/NewsWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v13, "prevIntent":Landroid/content/Intent;
    const-string v17, "PrevPost"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 112
    .local v14, "prevPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f060174

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    new-instance v15, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/NewsWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v15, "refreshIntent":Landroid/content/Intent;
    const-string v17, "Refresh"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 117
    .local v16, "refreshPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f060173

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    new-instance v10, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/NewsWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v10, "openIntent":Landroid/content/Intent;
    const-string v17, "OpenPost"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 122
    .local v11, "openPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f06016a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 124
    new-instance v6, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/NewPostActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v6, "newPostIntent":Landroid/content/Intent;
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 127
    .local v7, "newPostPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f060168

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    new-instance v3, Landroid/content/Intent;

    const-class v17, Lcom/vkontakte/android/MainActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v3, "appIntent":Landroid/content/Intent;
    const/high16 v17, 0x18000000

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 132
    .local v4, "appPending":Landroid/app/PendingIntent;
    sget-object v17, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v18, 0x7f060167

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 133
    return-void

    .line 95
    .end local v3    # "appIntent":Landroid/content/Intent;
    .end local v4    # "appPending":Landroid/app/PendingIntent;
    .end local v6    # "newPostIntent":Landroid/content/Intent;
    .end local v7    # "newPostPending":Landroid/app/PendingIntent;
    .end local v8    # "nextIntent":Landroid/content/Intent;
    .end local v9    # "nextPending":Landroid/app/PendingIntent;
    .end local v10    # "openIntent":Landroid/content/Intent;
    .end local v11    # "openPending":Landroid/app/PendingIntent;
    .end local v13    # "prevIntent":Landroid/content/Intent;
    .end local v14    # "prevPending":Landroid/app/PendingIntent;
    .end local v15    # "refreshIntent":Landroid/content/Intent;
    .end local v16    # "refreshPending":Landroid/app/PendingIntent;
    .restart local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const/16 v17, 0x0

    sput-boolean v17, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto/16 :goto_0
.end method

.method private loadPhoto(Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f06016b

    .line 271
    invoke-static {p2}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-static {p2}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 282
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 275
    :cond_0
    const v1, 0x7f020206

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 276
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/NewsWidget$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/vkontakte/android/NewsWidget$1;-><init>(Lcom/vkontakte/android/NewsWidget;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private preprocessText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 449
    const-string v0, "<a href=[\"\'][^\"]+[\"\']>([^<]+)</a>"

    const-string v1, "<font color=\'#2B587A\'>$1</font>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_0
    return-object p1
.end method

.method private refresh(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 382
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initInfoViews(Landroid/content/Context;)V

    .line 383
    sget-object v1, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f090051

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/NewsWidget;->showInfo(Landroid/widget/RemoteViews;ILandroid/content/Context;ZZZ)V

    .line 384
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->doUpdate(Landroid/content/Context;)V

    .line 385
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGet;

    const-string v1, "0"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;II)V

    .line 386
    new-instance v1, Lcom/vkontakte/android/NewsWidget$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/NewsWidget$2;-><init>(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 417
    return-void
.end method


# virtual methods
.method public fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 10
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 179
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    array-length v0, v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vkontakte/android/NewsWidget;->forceUpdate:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const-string v0, "vk"

    const-string v1, "querying"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p2}, Lcom/vkontakte/android/cache/NewsfeedCache;->getPostsOnly(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/NewsWidget;->forceUpdate:Z

    .line 185
    :cond_1
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    sget v1, Lcom/vkontakte/android/NewsWidget;->position:I

    aget-object v7, v0, v1

    .line 198
    .local v7, "e":Lcom/vkontakte/android/NewsEntry;
    const v0, 0x7f06016d

    iget-object v1, v7, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    const-string v8, ""

    .line 200
    .local v8, "str":Ljava/lang/String;
    iget-object v0, v7, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 201
    iget-object v8, v7, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 202
    iget-object v0, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 204
    :cond_2
    iget-object v0, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewsWidget;->getAttachmentsText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    :cond_3
    const v0, 0x7f060171

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    const v0, 0x7f06016e

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v7, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    iget v0, v7, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    if-eqz v0, :cond_4

    .line 209
    const v0, 0x7f06016f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 210
    const v0, 0x7f060170

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    const v0, 0x7f060170

    iget-object v1, v7, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 244
    :goto_0
    iget-object v0, v7, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/vkontakte/android/NewsWidget;->loadPhoto(Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/content/Context;)V

    .line 250
    .end local v7    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v8    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 213
    .restart local v7    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_4
    const v0, 0x7f06016f

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    const v0, 0x7f060170

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v7    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 246
    .local v9, "x":Ljava/lang/Exception;
    invoke-direct {p0, p2}, Lcom/vkontakte/android/NewsWidget;->initInfoViews(Landroid/content/Context;)V

    .line 247
    sget-object v1, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f090077

    move-object v0, p0

    move-object v3, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/NewsWidget;->showInfo(Landroid/widget/RemoteViews;ILandroid/content/Context;ZZZ)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 288
    const-string v2, "NextPost"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    sget v2, Lcom/vkontakte/android/NewsWidget;->position:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 290
    sget v2, Lcom/vkontakte/android/NewsWidget;->position:I

    sget-object v3, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    sput v5, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsWidget;->updateIt(Landroid/content/Context;)V

    .line 295
    :cond_1
    const-string v2, "PrevPost"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    sget v2, Lcom/vkontakte/android/NewsWidget;->position:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 297
    sget v2, Lcom/vkontakte/android/NewsWidget;->position:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 299
    :cond_2
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsWidget;->updateIt(Landroid/content/Context;)V

    .line 302
    :cond_3
    const-string v2, "Refresh"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->refresh(Landroid/content/Context;)V

    .line 306
    :cond_4
    const-string v2, "OpenPost"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 307
    sget-object v2, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    array-length v2, v2

    sget v3, Lcom/vkontakte/android/NewsWidget;->position:I

    if-gt v2, v3, :cond_5

    .line 308
    sput-boolean v6, Lcom/vkontakte/android/NewsWidget;->forceUpdate:Z

    .line 309
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 310
    sget-object v2, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v2, p1}, Lcom/vkontakte/android/NewsWidget;->fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 312
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    const-string v2, "entry"

    sget-object v3, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    sget v4, Lcom/vkontakte/android/NewsWidget;->position:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    .end local v0    # "_intent":Landroid/content/Intent;
    :cond_6
    const-string v2, "Update"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 319
    sput v5, Lcom/vkontakte/android/NewsWidget;->position:I

    .line 320
    sput-boolean v6, Lcom/vkontakte/android/NewsWidget;->forceUpdate:Z

    .line 321
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/NewsWidget;->updateIt(Landroid/content/Context;)V

    .line 324
    :cond_7
    const-string v2, "InfoClick"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 325
    sget-boolean v2, Lcom/vkontakte/android/NewsWidget;->openAppOnInfoClick:Z

    if-eqz v2, :cond_8

    .line 326
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v1, "aIntent":Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    .end local v1    # "aIntent":Landroid/content/Intent;
    :cond_8
    const-string v2, "ShowError"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 333
    const-string v2, "err_text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "err_text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_9
    return-void

    .line 333
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 49
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 52
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 54
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sid"

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "uid"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkontakte/android/Global;->uid:I

    .line 56
    const-string v0, "sid"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 57
    const-string v0, "secret"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 58
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "vk_uid"

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    sput-boolean v4, Lcom/vkontakte/android/Global;->inited:Z

    .line 60
    sput-boolean v4, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 66
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 71
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-boolean v0, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    if-eqz v0, :cond_3

    .line 72
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 73
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsWidget;->fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 79
    :goto_1
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 80
    return-void

    .line 62
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto :goto_0

    .line 75
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initInfoViews(Landroid/content/Context;)V

    .line 76
    sget-object v1, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f0900df

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/NewsWidget;->showInfo(Landroid/widget/RemoteViews;ILandroid/content/Context;ZZZ)V

    goto :goto_1
.end method

.method public showInfo(Landroid/widget/RemoteViews;ILandroid/content/Context;ZZZ)V
    .locals 5
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "resID"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "hideNewPost"    # Z
    .param p5, "openAppOnClick"    # Z
    .param p6, "disableRefresh"    # Z

    .prologue
    const v4, 0x7f060175

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 253
    if-nez p1, :cond_0

    .line 254
    invoke-direct {p0, p3}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 255
    sget-object p1, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    .line 258
    :cond_0
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    if-eqz p4, :cond_1

    const v0, 0x7f060168

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    :cond_1
    sput-boolean p5, Lcom/vkontakte/android/NewsWidget;->openAppOnInfoClick:Z

    .line 261
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 264
    const v3, 0x7f060177

    if-eqz p6, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    const v0, 0x7f060173

    if-eqz p6, :cond_3

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 268
    return-void

    :cond_2
    move v0, v2

    .line 264
    goto :goto_0

    :cond_3
    move v2, v1

    .line 267
    goto :goto_1
.end method

.method public updateIt(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 338
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 342
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->inited:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    if-nez v0, :cond_3

    .line 343
    :cond_1
    new-array v0, v1, [Lcom/vkontakte/android/NewsEntry;

    sput-object v0, Lcom/vkontakte/android/NewsWidget;->entries:[Lcom/vkontakte/android/NewsEntry;

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 345
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sid"

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "uid"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkontakte/android/Global;->uid:I

    .line 347
    const-string v0, "sid"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 348
    const-string v0, "secret"

    invoke-interface {v8, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 349
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "vk_uid"

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    sput-boolean v4, Lcom/vkontakte/android/Global;->inited:Z

    .line 351
    sput-boolean v4, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    .line 356
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 357
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 359
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 369
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    :goto_1
    sget-boolean v0, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    if-eqz v0, :cond_5

    .line 370
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initViews(Landroid/content/Context;)V

    .line 371
    sget-object v0, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/NewsWidget;->fillData(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 377
    :goto_2
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->doUpdate(Landroid/content/Context;)V

    .line 379
    return-void

    .line 353
    :cond_2
    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto :goto_0

    .line 361
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 362
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sid"

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    sput-boolean v4, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto :goto_1

    .line 365
    :cond_4
    sput-boolean v1, Lcom/vkontakte/android/NewsWidget;->loggedIn:Z

    goto :goto_1

    .line 373
    :cond_5
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsWidget;->initInfoViews(Landroid/content/Context;)V

    .line 374
    sget-object v1, Lcom/vkontakte/android/NewsWidget;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f0900df

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/NewsWidget;->showInfo(Landroid/widget/RemoteViews;ILandroid/content/Context;ZZZ)V

    goto :goto_2
.end method
