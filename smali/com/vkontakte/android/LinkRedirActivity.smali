.class public Lcom/vkontakte/android/LinkRedirActivity;
.super Landroid/app/Activity;
.source "LinkRedirActivity.java"


# instance fields
.field otherApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method private openBrowser(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 622
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unrecognized link: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v5, "vkontakte"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/LinkRedirActivity$9;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 653
    :goto_0
    return-void

    .line 629
    :cond_0
    move-object v3, p1

    .line 630
    .local v3, "orig":Landroid/net/Uri;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "http"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "m.vk.com"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "/away"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "to"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 631
    iget-boolean v5, p0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    if-eqz v5, :cond_4

    .line 632
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/LinkRedirActivity$10;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    invoke-virtual {p0}, Lcom/vkontakte/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 636
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2

    .line 637
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 638
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 646
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 648
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 638
    .end local v0    # "chooser":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 639
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    const-string v6, "com.vkontakte.android"

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 640
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 650
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 651
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private openChat(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const v1, 0x77359400

    .line 663
    if-ge p1, v1, :cond_0

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v1, Lcom/vkontakte/android/LinkRedirActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LinkRedirActivity$11;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 688
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 678
    :cond_0
    sub-int v1, p1, v1

    new-instance v2, Lcom/vkontakte/android/LinkRedirActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/LinkRedirActivity$12;-><init>(Lcom/vkontakte/android/LinkRedirActivity;I)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method private safeParseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 657
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 659
    :goto_0
    return v0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 619
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 42
    .local v15, "data":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    .line 43
    const v4, 0x7f06004e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_1
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATA = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    .line 51
    .local v29, "url":Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data1"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 54
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    const-string v4, "data1"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 56
    .local v27, "uid":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "ctype":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/vnd.com.vkontakte.android.profile"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v12, "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v13    # "ctype":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v27    # "uid":I
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 61
    .restart local v13    # "ctype":Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v27    # "uid":I
    :cond_3
    :try_start_1
    const-string v4, "vnd.android.cursor.item/vnd.com.vkontakte.android.sendmsg"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 64
    .end local v13    # "ctype":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v27    # "uid":I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 68
    :cond_4
    const-string v4, "vklink"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 69
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\?"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v29, v4, v5

    .line 94
    :cond_5
    :goto_2
    const-string v4, "http://"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https://"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "vkontakte://"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 96
    :cond_6
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 97
    .local v28, "uri":Landroid/net/Uri;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vkontakte.ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 98
    :cond_7
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 100
    .local v20, "path":Ljava/lang/String;
    const-string v4, "z"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "z"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 108
    :cond_8
    :goto_3
    const-string v4, "/friends"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 109
    const-string v4, "FriendsFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 74
    .end local v20    # "path":Ljava/lang/String;
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v4, "vkontakte"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 75
    const-string v4, "profile"

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 77
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 78
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 80
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 82
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v27    # "uid":I
    :cond_a
    const-string v4, "search"

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, "dt":Ljava/lang/String;
    const-string v4, "/"

    const/4 v5, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v24, v4, v5

    .line 85
    .local v24, "q":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/NewsfeedSearchActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v17, "intent":Landroid/content/Intent;
    const-string v4, "q"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 92
    .end local v16    # "dt":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v24    # "q":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    goto/16 :goto_2

    .line 103
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v28    # "uri":Landroid/net/Uri;
    :cond_c
    const-string v4, "w"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "w"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_3

    .line 113
    :cond_d
    const-string v4, "/groups"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 114
    const-string v4, "GroupsFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 118
    :cond_e
    const-string v4, "/search"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 122
    const-string v4, "communities"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 123
    const-string v4, "GroupsFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 125
    :cond_f
    const-string v4, "statuses"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 126
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/NewsfeedSearchActivity;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 131
    :cond_11
    const-string v4, "/fave"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 132
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 133
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "likes_posts"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 134
    const-string v4, "tab"

    const/4 v5, 0x3

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    :cond_12
    const-string v4, "likes_photo"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 137
    const-string v4, "tab"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    :cond_13
    const-string v4, "likes_video"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 140
    const-string v4, "tab"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    :cond_14
    const-string v4, "links"

    const-string v5, "section"

    invoke-virtual {v15, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 143
    const-string v4, "tab"

    const/4 v5, 0x4

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    :cond_15
    const-string v4, "FaveFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 149
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_16
    const-string v4, "/mail"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 183
    :cond_17
    const-string v4, "/feed"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    const-string v4, "/tag[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 220
    const-string v4, "/tag([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 221
    .local v23, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 222
    .local v18, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 224
    .restart local v27    # "uid":I
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "users.get"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v5, "user_ids"

    move/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 226
    const-string v5, "mane_case"

    const-string v6, "ins"

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 227
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/LinkRedirActivity$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 251
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_18
    const-string v4, "/(photos|albums)[-0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 253
    const-string v4, "/(?:photos|albums)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 254
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 255
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 256
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 257
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 258
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "uid"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06015a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 260
    const-string v4, "PhotoAlbumsListFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 264
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_19
    const-string v4, "/(videos)[-0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 266
    const-string v4, "/(?:videos)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 267
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 268
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 269
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 270
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 271
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "uid"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string v4, "VideoListFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 277
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_1a
    const-string v4, "/(id|wall)[-0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 279
    const-string v4, "/(?:id|wall)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 280
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 281
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 282
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 283
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 284
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 289
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_1b
    const-string v4, "/write[-0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 290
    const-string v4, "/write([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 291
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 292
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 293
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 294
    .restart local v27    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 299
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_1c
    const-string v4, "/(club|event|public)[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 301
    const-string v4, "/(?:club|event|public)([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 302
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 303
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 304
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v0, v4

    move/from16 v27, v0

    .line 305
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 306
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 311
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_1d
    const-string v4, "/board[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 313
    const-string v4, "/board([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 314
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 315
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 316
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v27

    .line 317
    .restart local v27    # "uid":I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 318
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v4, "gid"

    move/from16 v0, v27

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const-string v4, "BoardTopicsFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v12, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 323
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v27    # "uid":I
    :cond_1e
    const-string v4, "/album[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 325
    :try_start_2
    const-class v4, Landroid/app/Activity;

    const-string v5, "overridePendingTransition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 326
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 329
    :goto_4
    const-string v4, "/album([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 330
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 331
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 332
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v19

    .line 333
    .local v19, "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v10

    .line 334
    .local v10, "aid":I
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v4, "photos.getAlbums"

    invoke-direct {v5, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 335
    if-gez v19, :cond_1f

    const-string v4, "gid"

    :goto_5
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 336
    const-string v5, "aids"

    invoke-virtual {v4, v5, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 337
    const-string v5, "need_covers"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 338
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$2;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 359
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 335
    :cond_1f
    const-string v4, "uid"

    goto :goto_5

    .line 363
    .end local v10    # "aid":I
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "oid":I
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    :cond_20
    const-string v4, "/video[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 365
    :try_start_3
    const-class v4, Landroid/app/Activity;

    const-string v5, "overridePendingTransition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 366
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 369
    :goto_6
    const-string v4, "/video([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 370
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 371
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 372
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v19

    .line 373
    .restart local v19    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v30

    .line 374
    .local v30, "vid":I
    if-eqz v19, :cond_21

    if-nez v30, :cond_22

    :cond_21
    sget v4, Lcom/vkontakte/android/Global;->uid:I

    const v5, 0x5197966

    if-ne v4, v5, :cond_22

    .line 375
    const-string v4, "http://lleo.aha.ru/na"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 378
    :cond_22
    new-instance v4, Lcom/vkontakte/android/api/VideoGetById;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v30

    invoke-direct {v4, v0, v1, v5}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    .line 379
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$3;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 399
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "oid":I
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v30    # "vid":I
    :cond_23
    const-string v4, "/topic[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 401
    :try_start_4
    const-class v4, Landroid/app/Activity;

    const-string v5, "overridePendingTransition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 402
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 405
    :goto_7
    const-string v4, "/topic([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 406
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 407
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 408
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v0, v4

    move/from16 v19, v0

    .line 409
    .restart local v19    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v26

    .line 410
    .local v26, "tid":I
    new-instance v4, Lcom/vkontakte/android/api/BoardGetTopics;

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(II)V

    .line 411
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$4;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v26

    move-object/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/vkontakte/android/LinkRedirActivity$4;-><init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 430
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 434
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "oid":I
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v26    # "tid":I
    :cond_24
    const-string v4, "/page[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 435
    const-string v4, "/page([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 436
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 437
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 438
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v19

    .line 439
    .restart local v19    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v21

    .line 440
    .local v21, "pid":I
    new-instance v17, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v4, "oid"

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    const-string v4, "pid"

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 448
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v19    # "oid":I
    .end local v21    # "pid":I
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    :cond_25
    const-string v4, "/photo[-_0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 450
    :try_start_5
    const-class v4, Landroid/app/Activity;

    const-string v5, "overridePendingTransition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 451
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 454
    :goto_8
    const-string v4, "/photo([-_0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 455
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 456
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 457
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.getById"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 458
    const-string v5, "photos"

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 459
    const-string v5, "extended"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 460
    const-string v5, "photo_sizes"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 461
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$5;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 489
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    :cond_26
    const-string v4, "/wall[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 490
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 491
    const-string v4, "wall([-0-9]+_[0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 492
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 493
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 494
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 495
    .local v22, "post":Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/api/WallGetById;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 496
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$6;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 518
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 519
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 523
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "post":Ljava/lang/String;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    :cond_27
    const-string v4, "/audio[-0-9]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 524
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 525
    const-string v4, "audio([-0-9]+_[0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 526
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 527
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 528
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 529
    .restart local v22    # "post":Ljava/lang/String;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 530
    .local v11, "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v4, Lcom/vkontakte/android/api/AudioGetById;

    invoke-direct {v4, v11}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/Vector;)V

    .line 532
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$7;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 559
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 560
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 564
    .end local v11    # "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "post":Ljava/lang/String;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    :cond_28
    const-string v4, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 566
    :try_start_6
    const-class v4, Landroid/app/Activity;

    const-string v5, "overridePendingTransition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 567
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 570
    :goto_9
    const-string v4, "/([A-Za-z0-9\\._]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 571
    .restart local v23    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 572
    .restart local v18    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    .line 573
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 575
    .local v25, "scrName":Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "resolveScreenName"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 576
    const-string v5, "screen_name"

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 577
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$8;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 612
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 617
    .end local v18    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "path":Ljava/lang/String;
    .end local v23    # "ptn":Ljava/util/regex/Pattern;
    .end local v25    # "scrName":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 568
    .restart local v20    # "path":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_9

    .line 452
    :catch_2
    move-exception v4

    goto/16 :goto_8

    .line 403
    :catch_3
    move-exception v4

    goto/16 :goto_7

    .line 367
    :catch_4
    move-exception v4

    goto/16 :goto_6

    .line 327
    :catch_5
    move-exception v4

    goto/16 :goto_4
.end method
