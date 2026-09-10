.class public Lcom/vkontakte/android/LinkRedirActivity;
.super Landroid/app/Activity;
.source "LinkRedirActivity.java"


# instance fields
.field otherApp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LinkRedirActivity;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private openBrowser(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f080068

    const/high16 v10, 0x10000

    const/4 v9, 0x0

    .line 629
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unrecognized link: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v6, "vkontakte"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 631
    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/LinkRedirActivity$9;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 672
    :goto_0
    return-void

    .line 636
    :cond_0
    move-object v4, p1

    .line 637
    .local v4, "orig":Landroid/net/Uri;
    const-string v6, "vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 638
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v12, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "forceHTTPS"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "https"

    :goto_1
    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "m.vk.com"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "/away"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "to"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "utf"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 640
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    if-eqz v6, :cond_6

    .line 641
    new-instance v6, Lcom/vkontakte/android/LinkRedirActivity$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/LinkRedirActivity$10;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 644
    invoke-virtual {p0}, Lcom/vkontakte/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 645
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_5

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "foundSelf":Z
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 648
    .local v3, "intent":Landroid/content/Intent;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 657
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    if-eqz v1, :cond_5

    .line 658
    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 638
    .end local v1    # "foundSelf":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v6, "http"

    goto :goto_1

    .line 648
    .restart local v1    # "foundSelf":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 649
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v7, "com.vkontakte.android"

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 650
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 654
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 662
    .end local v1    # "foundSelf":Z
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v6, v12}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 664
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 666
    .end local v0    # "chooser":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 667
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 668
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 670
    :cond_7
    invoke-static {p0, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private openChat(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const v1, 0x77359400

    .line 682
    if-ge p1, v1, :cond_0

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v1, Lcom/vkontakte/android/LinkRedirActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LinkRedirActivity$11;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 707
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 697
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
    .line 676
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 678
    :goto_0
    return v0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 626
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 47
    .local v16, "data":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    .line 48
    const v4, 0x7f080068

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_1
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATA = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v34

    .line 56
    .local v34, "url":Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
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

    move-result-object v15

    .line 59
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 60
    const-string v4, "data1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 61
    .local v32, "uid":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "ctype":Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/vnd.com.vkontakte.android.profile"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v13, "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v14    # "ctype":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uid":I
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 66
    .restart local v14    # "ctype":Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v32    # "uid":I
    :cond_3
    :try_start_1
    const-string v4, "vnd.android.cursor.item/vnd.com.vkontakte.android.sendmsg"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 69
    .end local v14    # "ctype":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v32    # "uid":I
    :catch_0
    move-exception v4

    goto :goto_1

    .line 73
    :cond_4
    const-string v4, "vklink"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 74
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\?"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v34, v4, v5

    .line 117
    :cond_5
    :goto_2
    const-string v4, "http://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "vkontakte://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 119
    :cond_6
    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    .line 120
    .local v33, "uri":Landroid/net/Uri;
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vkontakte.ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "m.vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 121
    :cond_7
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "path":Ljava/lang/String;
    const-string v4, "z"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "z"

    move-object/from16 v0, v33

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

    move-result-object v22

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 131
    :cond_8
    :goto_3
    const-string v4, "/away"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "/away.php"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 132
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 79
    .end local v22    # "path":Ljava/lang/String;
    .end local v33    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v4, "vkontakte"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 80
    const-string v4, "profile"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 81
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 82
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 83
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 85
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 87
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v32    # "uid":I
    :cond_b
    const-string v4, "search"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 88
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, "dt":Ljava/lang/String;
    const-string v4, "/"

    const/4 v5, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v27, v4, v5

    .line 90
    .local v27, "q":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/NewsfeedSearchActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v19, "intent":Landroid/content/Intent;
    const-string v4, "q"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 95
    .end local v17    # "dt":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v27    # "q":Ljava/lang/String;
    :cond_c
    const-string v4, "chat"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    const-string v4, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 97
    .local v31, "title":Ljava/lang/String;
    const-string v4, "photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 98
    .local v23, "photo":Ljava/lang/String;
    const-string v4, "peer"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 99
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 100
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v4, "title"

    move-object/from16 v0, v31

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    if-eqz v23, :cond_d

    .line 103
    const-string v4, "photo"

    move-object/from16 v0, v23

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    :cond_d
    new-instance v19, Landroid/content/Intent;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "ChatFragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v4, "args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->isInBackground()Z

    move-result v4

    if-nez v4, :cond_e

    .line 108
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 110
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 115
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v23    # "photo":Ljava/lang/String;
    .end local v31    # "title":Ljava/lang/String;
    .end local v32    # "uid":I
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/vkontakte/android/LinkRedirActivity;->otherApp:Z

    goto/16 :goto_2

    .line 126
    .restart local v22    # "path":Ljava/lang/String;
    .restart local v33    # "uri":Landroid/net/Uri;
    :cond_10
    const-string v4, "w"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "w"

    move-object/from16 v0, v33

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

    move-result-object v22

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://vk.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_3

    .line 137
    :cond_11
    const-string v4, "/friends"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 138
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 139
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 140
    const-string v4, "id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v18

    .line 141
    .local v18, "id":I
    if-lez v18, :cond_12

    .line 142
    const-string v4, "uid"

    move/from16 v0, v18

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .end local v18    # "id":I
    :cond_12
    const-string v4, "FriendsFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 148
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_13
    const-string v4, "/groups"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 149
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 150
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 151
    const-string v4, "id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v18

    .line 152
    .restart local v18    # "id":I
    if-lez v18, :cond_14

    .line 153
    const-string v4, "uid"

    move/from16 v0, v18

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .end local v18    # "id":I
    :cond_14
    const-string v4, "GroupsFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 159
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_15
    const-string v4, "/search"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 163
    const-string v4, "communities"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 164
    const-string v4, "GroupsFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 166
    :cond_16
    const-string v4, "statuses"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 167
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/NewsfeedSearchActivity;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 172
    :cond_18
    const-string v4, "/fave"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 173
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 174
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "likes_posts"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 175
    const-string v4, "tab"

    const/4 v5, 0x3

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :cond_19
    const-string v4, "likes_photo"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 178
    const-string v4, "tab"

    const/4 v5, 0x1

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    :cond_1a
    const-string v4, "likes_video"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 181
    const-string v4, "tab"

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :cond_1b
    const-string v4, "links"

    const-string v5, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 184
    const-string v4, "tab"

    const/4 v5, 0x4

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    :cond_1c
    const-string v4, "FaveFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 190
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_1d
    const-string v4, "/mail"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "/im"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 191
    :cond_1e
    const-string v4, "DialogsFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 195
    :cond_1f
    const-string v4, "/feed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 196
    const-string v4, "section"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 197
    .local v29, "section":Ljava/lang/String;
    const-string v4, "notifications"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 198
    const-string v4, "FeedbackFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 202
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 200
    :cond_20
    const-string v4, "NewsfeedFragment"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_5

    .line 206
    .end local v29    # "section":Ljava/lang/String;
    :cond_21
    const-string v4, "/tag[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 208
    const-string v4, "/tag([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 209
    .local v26, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 210
    .local v20, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 211
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 212
    .restart local v32    # "uid":I
    new-instance v4, Lcom/vkontakte/android/api/PhotosGetAlbums;

    const/4 v5, 0x1

    move/from16 v0, v32

    invoke-direct {v4, v0, v5}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(IZ)V

    .line 213
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/LinkRedirActivity$1;-><init>(Lcom/vkontakte/android/LinkRedirActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 237
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_22
    const-string v4, "/(photos|albums)[-0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 239
    const-string v4, "/(?:photos|albums)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 240
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 241
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 242
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 243
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "uid"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 246
    const-string v4, "PhotoAlbumsListFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 250
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_23
    const-string v4, "/(videos)[-0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 252
    const-string v4, "/(?:videos)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 253
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 254
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 255
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 256
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 257
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "uid"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v4, "VideoListFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 263
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_24
    const-string v4, "/(id|wall)[-0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 265
    const-string v4, "/(?:id|wall)([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 266
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 267
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 268
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 269
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 270
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 275
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_25
    const-string v4, "/write[-0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 276
    const-string v4, "/write([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 277
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 278
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 279
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 280
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openChat(I)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 285
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_26
    const-string v4, "/(club|event|public)[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 287
    const-string v4, "/(?:club|event|public)([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 288
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 289
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 290
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v0, v4

    move/from16 v32, v0

    .line 291
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 292
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "id"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string v4, "ProfileFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 297
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_27
    const-string v4, "/board[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    .line 299
    const-string v4, "/board([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 300
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 301
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 302
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v32

    .line 303
    .restart local v32    # "uid":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 304
    .restart local v13    # "args":Landroid/os/Bundle;
    const-string v4, "gid"

    move/from16 v0, v32

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v4, "BoardTopicsFragment"

    move-object/from16 v0, p0

    invoke-static {v4, v13, v0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 309
    .end local v13    # "args":Landroid/os/Bundle;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v32    # "uid":I
    :cond_28
    const-string v4, "/album[-0-9]+_[-0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 310
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 311
    const-string v4, "/album([-0-9]+)_([-0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 312
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 313
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 314
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v21

    .line 315
    .local v21, "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v10

    .line 316
    .local v10, "_aid":I
    const-string v4, "0"

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 317
    const/4 v10, -0x6

    .line 323
    :cond_29
    :goto_6
    move v11, v10

    .line 324
    .local v11, "aid":I
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "execute.getPhotoAlbum"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v5, "owner_id"

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 326
    const-string v5, "album_id"

    invoke-virtual {v4, v5, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 327
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v11, v1}, Lcom/vkontakte/android/LinkRedirActivity$2;-><init>(Lcom/vkontakte/android/LinkRedirActivity;ILandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 359
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 318
    .end local v11    # "aid":I
    :cond_2a
    const-string v4, "00"

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 319
    const/4 v10, -0x7

    .line 320
    goto :goto_6

    :cond_2b
    const-string v4, "000"

    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 321
    const/16 v10, -0xf

    goto :goto_6

    .line 363
    .end local v10    # "_aid":I
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "oid":I
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    :cond_2c
    const-string v4, "/pages"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "oid"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    const-string v4, "p"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 364
    const-string v4, "oid"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v21

    .line 365
    .restart local v21    # "oid":I
    const-string v4, "p"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v31

    .line 366
    .restart local v31    # "title":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v4, "oid"

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v4, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 374
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v21    # "oid":I
    .end local v31    # "title":Ljava/lang/String;
    :cond_2d
    const-string v4, "/video[-0-9]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 375
    const-string v4, "/video([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 376
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 377
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 378
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v21

    .line 379
    .restart local v21    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v35

    .line 380
    .local v35, "vid":I
    new-instance v4, Lcom/vkontakte/android/api/VideoGetById;

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v35

    invoke-direct {v4, v0, v1, v5}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    .line 381
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$3;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 397
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 401
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "oid":I
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v35    # "vid":I
    :cond_2e
    const-string v4, "/topic[-0-9]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 402
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 403
    const-string v4, "/topic([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 404
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 405
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 406
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v0, v4

    move/from16 v21, v0

    .line 407
    .restart local v21    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v30

    .line 408
    .local v30, "tid":I
    new-instance v4, Lcom/vkontakte/android/api/BoardGetTopics;

    move/from16 v0, v21

    move/from16 v1, v30

    invoke-direct {v4, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(II)V

    .line 409
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$4;

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v30

    move-object/from16 v3, v33

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/vkontakte/android/LinkRedirActivity$4;-><init>(Lcom/vkontakte/android/LinkRedirActivity;IILandroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 429
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 433
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "oid":I
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v30    # "tid":I
    :cond_2f
    const-string v4, "/page[-0-9]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 434
    const-string v4, "/page([-0-9]+)_([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 435
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 436
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 437
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v21

    .line 438
    .restart local v21    # "oid":I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v24

    .line 439
    .local v24, "pid":I
    new-instance v19, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/WikiViewActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v4, "oid"

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v4, "pid"

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 447
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "oid":I
    .end local v24    # "pid":I
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    :cond_30
    const-string v4, "/photo[-_0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 449
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

    .line 450
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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 453
    :goto_7
    const-string v4, "/photo([-_0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 454
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 455
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 456
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.getById"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v5, "photos"

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 458
    const-string v5, "extended"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 459
    const-string v5, "photo_sizes"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 460
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$5;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 484
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 488
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    :cond_31
    const-string v4, "/wall[-0-9]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 489
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 490
    const-string v4, "wall([-0-9]+_[0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 491
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 492
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 493
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 494
    .local v25, "post":Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/api/WallGetById;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/WallGetById;-><init>([Ljava/lang/String;)V

    .line 495
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$6;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/WallGetById;->setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 530
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v25    # "post":Ljava/lang/String;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    :cond_32
    const-string v4, "/audio[-0-9]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 531
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 532
    const-string v4, "audio([-0-9]+_[0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 533
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 534
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 535
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 536
    .restart local v25    # "post":Ljava/lang/String;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 537
    .local v12, "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v4, Lcom/vkontakte/android/api/AudioGetById;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/List;)V

    .line 539
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$7;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 571
    .end local v12    # "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v25    # "post":Ljava/lang/String;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    :cond_33
    const-string v4, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 573
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

    .line 574
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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 577
    :goto_8
    const-string v4, "/([A-Za-z0-9\\._]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 578
    .restart local v26    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 579
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    .line 580
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    .line 582
    .local v28, "scrName":Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v5, "resolveScreenName"

    invoke-direct {v4, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 583
    const-string v5, "screen_name"

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 584
    new-instance v5, Lcom/vkontakte/android/LinkRedirActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/LinkRedirActivity$8;-><init>(Lcom/vkontakte/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 618
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 619
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 624
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "path":Ljava/lang/String;
    .end local v26    # "ptn":Ljava/util/regex/Pattern;
    .end local v28    # "scrName":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 575
    .restart local v22    # "path":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_8

    .line 451
    :catch_2
    move-exception v4

    goto/16 :goto_7
.end method
