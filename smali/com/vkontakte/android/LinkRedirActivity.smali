.class public Lcom/vkontakte/android/LinkRedirActivity;
.super Landroid/app/Activity;
.source "LinkRedirActivity.java"


# instance fields
.field otherApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method private openBrowser(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 421
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unrecognized link: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v4, p0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    if-eqz v4, :cond_3

    .line 423
    new-instance v4, Lcom/vkontakte/android/LinkRedirActivity$7;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/LinkRedirActivity$7;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {p0}, Lcom/vkontakte/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 428
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 429
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 437
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 444
    .end local v0    # "chooser":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-void

    .line 429
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 430
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    const-string v5, "com.vkontakte.android"

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 36
    .local v4, "data":Landroid/net/Uri;
    if-nez v4, :cond_f

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v18, :cond_1

    .line 38
    sget v18, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    sget-object v19, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v5, "intent":Landroid/content/Intent;
    const-string v18, "peerID"

    sget-object v19, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v18, "photo"

    sget-object v19, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v18, "title"

    sget-object v19, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const/16 v18, 0x0

    sput-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 418
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->isTaskRoot()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 50
    sget-boolean v18, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v18, :cond_6

    .line 51
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/TabletMainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "tab"

    const-string v19, "messages"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "friends"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "tab"

    const-string v19, "friends"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->onNotificationOpened()V

    .line 89
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 56
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "tab"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "friends"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "tab"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 62
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_9
    sget-boolean v18, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v18, :cond_c

    .line 63
    sget-object v18, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v18, :cond_4

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    sget-object v18, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/TabletMainActivity;->setTab(Ljava/lang/String;)V

    .line 65
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "friends"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 66
    sget-boolean v18, Lcom/vkontakte/android/TabletMainActivity;->isActive:Z

    if-eqz v18, :cond_b

    .line 67
    sget-object v18, Lcom/vkontakte/android/TabletMainActivity;->lastInstance:Lcom/vkontakte/android/TabletMainActivity;

    const-string v19, "friends"

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/TabletMainActivity;->setTab(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 69
    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/FriendRequestsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 75
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_c
    sget-object v18, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v18, :cond_4

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "messages"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    sget-object v18, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    .line 77
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "friends"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 78
    sget-boolean v18, Lcom/vkontakte/android/MainActivity;->isActive:Z

    if-eqz v18, :cond_e

    .line 79
    sget-object v18, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/MainActivity;->tabbar:Lcom/vkontakte/android/ExtendedTabBar;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ExtendedTabBar;->setCurrentTab(IZ)V

    goto/16 :goto_1

    .line 81
    :cond_e
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/FriendRequestsActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 95
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_f
    const-string v18, "vklink"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 96
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\\?"

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v16, v18, v19

    .line 101
    .local v16, "url":Ljava/lang/String;
    :goto_2
    const-string v18, "http://"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    const-string v18, "https://"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http://"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 103
    :cond_10
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 104
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    const-string v19, "openvk.org"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    const-string v19, "openvk.xyz"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v18

    const-string v19, "openvk.uk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 105
    :cond_11
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "path":Ljava/lang/String;
    const-string v18, "/friends"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 109
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lcom/vkontakte/android/FriendsActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 98
    .end local v8    # "path":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "url":Ljava/lang/String;
    :cond_12
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 99
    .restart local v16    # "url":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    goto/16 :goto_2

    .line 113
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    :cond_13
    const-string v18, "/groups"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 114
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lcom/vkontakte/android/GroupsActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 119
    :cond_14
    const-string v18, "/(photos|albums)[-0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 121
    const-string v18, "/(?:photos|albums)([-0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 122
    .local v11, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 123
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 124
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 125
    .local v14, "uid":I
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/PhotoAlbumListActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v18, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0901c7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 132
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "uid":I
    :cond_15
    const-string v18, "/(id|wall)[-0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 134
    const-string v18, "/(?:id|wall)([-0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 135
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 136
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 137
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 138
    .restart local v14    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/WallActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v18, "wall_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 144
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "uid":I
    :cond_16
    const-string v18, "/(club|event|public)[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 146
    const-string v18, "/(?:club|event|public)([0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 147
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 148
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 149
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    neg-int v14, v0

    .line 150
    .restart local v14    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/WallActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v18, "wall_id"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 156
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "uid":I
    :cond_17
    const-string v18, "/album[-0-9]+_[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 158
    :try_start_0
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 159
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 162
    :goto_3
    const-string v18, "/album([-0-9]+)_([0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 163
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 164
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 165
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 166
    .local v7, "oid":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "aid":I
    new-instance v18, Lcom/vkontakte/android/APIRequest;

    const-string v19, "photos.getAlbums"

    invoke-direct/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v19, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 169
    const-string v19, "aids"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 170
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v7, v15}, Lcom/vkontakte/android/LinkRedirActivity$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 187
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 188
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 192
    .end local v3    # "aid":I
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "oid":I
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    :cond_18
    const-string v18, "/video[-0-9]+_[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 194
    :try_start_1
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 195
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 198
    :goto_4
    const-string v18, "/video([-0-9]+)_([0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 199
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 200
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 201
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 202
    .restart local v7    # "oid":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 203
    .local v17, "vid":I
    new-instance v18, Lcom/vkontakte/android/api/VideoGetById;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/vkontakte/android/api/VideoGetById;-><init>(II)V

    .line 204
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/vkontakte/android/LinkRedirActivity$2;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 219
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 220
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 224
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "oid":I
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v17    # "vid":I
    :cond_19
    const-string v18, "/topic[-0-9]+_[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 226
    :try_start_2
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 227
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 230
    :goto_5
    const-string v18, "/topic([-0-9]+)_([0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 231
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 232
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 233
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    neg-int v7, v0

    .line 234
    .restart local v7    # "oid":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 235
    .local v13, "tid":I
    new-instance v18, Lcom/vkontakte/android/api/BoardGetTopics;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v13}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(II)V

    .line 236
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13, v15}, Lcom/vkontakte/android/LinkRedirActivity$3;-><init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 254
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 255
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 259
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "oid":I
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v13    # "tid":I
    :cond_1a
    const-string v18, "/page[-0-9]+_[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 260
    const-string v18, "/page([-0-9]+)_([0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 261
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 262
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 263
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    neg-int v7, v0

    .line 264
    .restart local v7    # "oid":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 265
    .local v9, "pid":I
    new-instance v5, Landroid/content/Intent;

    const-class v18, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v18, "oid"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v18, "pid"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 272
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "oid":I
    .end local v9    # "pid":I
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    :cond_1b
    const-string v18, "/photo[-_0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 274
    :try_start_3
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 275
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 278
    :goto_6
    const-string v18, "/photo([-_0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 279
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 280
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 281
    new-instance v18, Lcom/vkontakte/android/APIRequest;

    const-string v19, "photos.getById"

    invoke-direct/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v19, "photos"

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 283
    const-string v19, "extended"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 284
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/vkontakte/android/LinkRedirActivity$4;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 320
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 321
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 325
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    :cond_1c
    const-string v18, "/wall[-0-9]+_[0-9]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 327
    :try_start_4
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 328
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 331
    :goto_7
    const-string v18, "/wall([-0-9]+_[0-9]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 332
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 333
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 334
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "post":Ljava/lang/String;
    new-instance v18, Lcom/vkontakte/android/api/WallGetById;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 336
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/vkontakte/android/LinkRedirActivity$5;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 358
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 359
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 363
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v10    # "post":Ljava/lang/String;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    :cond_1d
    const-string v18, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 365
    :try_start_5
    const-class v18, Landroid/app/Activity;

    const-string v19, "overridePendingTransition"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 366
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 369
    :goto_8
    const-string v18, "/([A-Za-z0-9\\._]+)"

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 370
    .restart local v11    # "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 371
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 372
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 374
    .local v12, "scrName":Ljava/lang/String;
    new-instance v18, Lcom/vkontakte/android/APIRequest;

    const-string v19, "resolveScreenName"

    invoke-direct/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 375
    const-string v19, "screen_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 376
    new-instance v19, Lcom/vkontakte/android/LinkRedirActivity$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/vkontakte/android/LinkRedirActivity$6;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 410
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 411
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 416
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "ptn":Ljava/util/regex/Pattern;
    .end local v12    # "scrName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 367
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v18

    goto :goto_8

    .line 329
    :catch_1
    move-exception v18

    goto/16 :goto_7

    .line 276
    :catch_2
    move-exception v18

    goto/16 :goto_6

    .line 228
    :catch_3
    move-exception v18

    goto/16 :goto_5

    .line 196
    :catch_4
    move-exception v18

    goto/16 :goto_4

    .line 160
    :catch_5
    move-exception v18

    goto/16 :goto_3
.end method
